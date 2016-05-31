require 'action_view'
require 'active_support/all'
require 'inshape/version'
require 'ostruct'

module InShape
  module Memory
    extend ActionView::Helpers::NumberHelper

    class << self

      attr_accessor :max_usage
      attr_accessor :min_free

      def status
        if RUBY_ENGINE == 'jruby'

          java.lang.System.gc
          rt  = java.lang.Runtime.getRuntime
          max = rt.maxMemory
          allocated = rt.totalMemory
          free = rt.freeMemory
          used = (allocated - free)
          usage = (used / max.to_f)
          is_ok = usage < max_usage && free >= min_free

          OpenStruct.new is_ok: is_ok, content: {
            memory: { Max: number_to_human_size(max),
                      Allocated: number_to_human_size(allocated),
                      Used: number_to_human_size(used),
                      Usage: usage.round(2),
                      OK?: is_ok } }.with_indifferent_access.as_json
        else

          OpenStruct.new is_ok: true, content: {}

        end
      end
    end
  end
end

InShape::Memory.max_usage = 0.95
InShape::Memory.min_free = 10.megabytes
