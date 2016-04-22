# Protocol references:
#
# * http://tools.ietf.org/html/draft-hixie-thewebsocketprotocol-75
# * http://tools.ietf.org/html/draft-hixie-thewebsocketprotocol-76
# * http://tools.ietf.org/html/draft-ietf-hybi-thewebsocketprotocol-17

require 'base64'
require 'digest/md5'
require 'digest/sha1'
require 'securerandom'
require 'set'
require 'stringio'
require 'uri'
require 'websocket/extensions'

module WebSocket
  autoload :HTTP, File.expand_path('../http', __FILE__)

  class Driver

    root = File.expand_path('../driver', __FILE__)
    require 'websocket_mask'

    if RUBY_PLATFORM =~ /java/
      require 'jruby'
      com.jcoglan.websocket.WebsocketMaskService.new.basicLoad(JRuby.runtime)
    end

    unless Mask.respond_to?(:mask)
      def Mask.mask(payload, mask)
        @instance ||= new
        @instance.mask(payload, mask)
      end
    end

    unless String.instance_methods.include?(:force_encoding)
      require root + '/utf8_match'
    end

    MAX_LENGTH = 0x3ffffff
    STATES     = [:connecting, :open, :closing, :closed]

    ConnectEvent = Struct.new(nil)
    OpenEvent    = Struct.new(nil)
    MessageEvent = Struct.new(:data)
    CloseEvent   = Struct.new(:code, :reason)

    ProtocolError      = Class.new(StandardError)
    ConfigurationError = Class.new(ArgumentError)

    autoload :Client,       root + '/client'
    autoload :Draft75,      root + '/draft75'
    autoload :Draft76,      root + '/draft76'
    autoload :EventEmitter, root + '/event_emitter'
    autoload :Headers,      root + '/headers'
    autoload :Hybi,         root + '/hybi'
    autoload :Proxy,        root + '/proxy'
    autoload :Server,       root + '/server'
    autoload :StreamReader, root + '/stream_reader'

    include EventEmitter
    attr_reader :protocol, :ready_state

    def initialize(socket, options = {})
      super()
      Driver.validate_options(options, [:max_length, :masking, :require_masking, :protocols])

      @socket      = socket
      @reader      = StreamReader.new
      @options     = options
      @max_length  = options[:max_length] || MAX_LENGTH
      @headers     = Headers.new
      @queue       = []
      @ready_state = 0
    end

    def state
      return nil unless @ready_state >= 0
      STATES[@ready_state]
    end

    def add_extension(extension)
      false
    end

    def set_header(name, value)
      return false unless @ready_state <= 0
      @headers[name] = value
      true
    end

    def start
      return false unless @ready_state == 0
      response = handshake_response
      return false unless response
      @socket.write(Driver.encode(response, :binary))
      open unless @stage == -1
      true
    end

    def text(message)
      frame(message)
    end

    def binary(message)
      false
    end

    def ping(*args)
      false
    end

    def pong(*args)
      false
    end

    def close(reason = nil, code = nil)
      return false unless @ready_state == 1
      @ready_state = 3
      emit(:close, CloseEvent.new(nil, nil))
      true
    end

  private

    def open
      @ready_state = 1
      @queue.each { |message| frame(*message) }
      @queue = []
      emit(:open, OpenEvent.new)
    end

    def queue(message)
      @queue << message
      true
    end

    def self.client(socket, options = {})
      Client.new(socket, options.merge(:masking => true))
    end

    def self.server(socket, options = {})
      Server.new(socket, options.merge(:require_masking => true))
    end

    def self.rack(socket, options = {})
      env = socket.env
      if env['HTTP_SEC_WEBSOCKET_VERSION']
        Hybi.new(socket, options.merge(:require_masking => true))
      elsif env['HTTP_SEC_WEBSOCKET_KEY1']
        Draft76.new(socket, options)
      else
        Draft75.new(socket, options)
      end
    end

    def self.encode(string, encoding = nil)
      case string
        when Array then
          string = string.pack('C*')
          encoding ||= :binary
        when String then
          encoding ||= :utf8
      end
      encodings = {:utf8 => 'UTF-8', :binary => 'ASCII-8BIT'}
      string.force_encoding(encodings[encoding]) if string.respond_to?(:force_encoding)
      return nil if encoding == :utf8 and not valid_utf8?(string)
      string
    end

    def self.validate_options(options, valid_keys)
      options.keys.each do |key|
        unless valid_keys.include?(key)
          raise ConfigurationError, "Unrecognized option: #{key.inspect}"
        end
      end
    end

    def self.valid_utf8?(string)
      if defined?(UTF8_MATCH)
        UTF8_MATCH =~ string ? true : false
      else
        string.valid_encoding?
      end
    end

    def self.websocket?(env)
      connection = env['HTTP_CONNECTION'] || ''
      upgrade    = env['HTTP_UPGRADE']    || ''

      env['REQUEST_METHOD'] == 'GET' and
      connection.downcase.split(/ *, */).include?('upgrade') and
      upgrade.downcase == 'websocket'
    end

  end
end