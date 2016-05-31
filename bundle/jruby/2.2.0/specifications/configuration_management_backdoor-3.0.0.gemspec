# -*- encoding: utf-8 -*-
# stub: configuration_management_backdoor 3.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "configuration_management_backdoor"
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Thomas Schank"]
  s.date = "2016-02-03"
  s.description = "See summary."
  s.email = ["DrTom@schank.ch"]
  s.homepage = "https://github.com/DrTom/rails_configuration-management-backdoor"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "Configuration Management Backdoor for Ruby on Rails"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["< 5.0", ">= 4.0.0"])
      s.add_development_dependency(%q<rubocop>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["< 5.0", ">= 4.0.0"])
      s.add_dependency(%q<rubocop>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["< 5.0", ">= 4.0.0"])
    s.add_dependency(%q<rubocop>, [">= 0"])
  end
end
