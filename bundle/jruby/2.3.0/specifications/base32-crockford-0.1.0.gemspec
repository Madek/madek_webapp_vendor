# -*- encoding: utf-8 -*-
# stub: base32-crockford 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "base32-crockford".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Levin Alexander".freeze]
  s.date = "2011-06-25"
  s.email = "mail@levinalex.net".freeze
  s.homepage = "http://levinalex.net/src/base32".freeze
  s.rubygems_version = "2.6.6".freeze
  s.summary = "32-symbol notation for expressing numbers in a form that can be conveniently and accurately transmitted between humans".freeze

  s.installed_by_version = "2.6.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
