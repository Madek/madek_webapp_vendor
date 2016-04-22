# -*- encoding: utf-8 -*-
# stub: cider_ci-support 3.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "cider_ci-support"
  s.version = "3.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Thomas Schank"]
  s.date = "2016-04-06"
  s.description = ""
  s.email = ["DrTom@schank.ch"]
  s.executables = ["cider-ci_flay", "cider-ci_flog"]
  s.files = ["bin/cider-ci_flay", "bin/cider-ci_flog"]
  s.homepage = "https://github.com/cider-ci/cider-ci_ruby-support"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "Cider-CI support for Ruby and Ruby on Rails projects"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.11"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rubocop>, ["= 0.35.1"])
      s.add_runtime_dependency(%q<flay>, ["~> 2.6.1"])
      s.add_runtime_dependency(%q<flog>, ["~> 4.3.2"])
      s.add_runtime_dependency(%q<mime-types>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.11"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rubocop>, ["= 0.35.1"])
      s.add_dependency(%q<flay>, ["~> 2.6.1"])
      s.add_dependency(%q<flog>, ["~> 4.3.2"])
      s.add_dependency(%q<mime-types>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.11"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rubocop>, ["= 0.35.1"])
    s.add_dependency(%q<flay>, ["~> 2.6.1"])
    s.add_dependency(%q<flog>, ["~> 4.3.2"])
    s.add_dependency(%q<mime-types>, [">= 0"])
  end
end
