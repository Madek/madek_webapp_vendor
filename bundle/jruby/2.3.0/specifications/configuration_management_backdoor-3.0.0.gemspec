# -*- encoding: utf-8 -*-
# stub: configuration_management_backdoor 3.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "configuration_management_backdoor".freeze
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Thomas Schank".freeze]
  s.date = "2016-02-03"
  s.description = "See summary.".freeze
  s.email = ["DrTom@schank.ch".freeze]
  s.homepage = "https://github.com/DrTom/rails_configuration-management-backdoor".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.4".freeze
  s.summary = "Configuration Management Backdoor for Ruby on Rails".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, ["< 5.0", ">= 4.0.0"])
      s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rails>.freeze, ["< 5.0", ">= 4.0.0"])
      s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, ["< 5.0", ">= 4.0.0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
  end
end
