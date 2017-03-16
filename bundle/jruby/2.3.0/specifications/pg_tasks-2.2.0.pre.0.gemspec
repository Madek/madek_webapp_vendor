# -*- encoding: utf-8 -*-
# stub: pg_tasks 2.2.0.pre.0 ruby lib

Gem::Specification.new do |s|
  s.name = "pg_tasks".freeze
  s.version = "2.2.0.pre.0"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Thomas Schank".freeze]
  s.date = "2017-03-16"
  s.email = ["DrTom@schank.ch".freeze]
  s.homepage = "https://github.com/DrTom/rails_pg-tasks".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.6".freeze
  s.summary = "PostgreSQL Tasks and Functions for Ruby on Rails".freeze

  s.installed_by_version = "2.6.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, ["< 5.0.0", ">= 4.1.0"])
      s.add_development_dependency(%q<pg>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rails>.freeze, ["< 5.0.0", ">= 4.1.0"])
      s.add_dependency(%q<pg>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, ["< 5.0.0", ">= 4.1.0"])
    s.add_dependency(%q<pg>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
  end
end
