# -*- encoding: utf-8 -*-
# stub: cider_ci-support 3.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "cider_ci-support".freeze
  s.version = "3.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Thomas Schank".freeze]
  s.date = "2016-04-06"
  s.description = "".freeze
  s.email = ["DrTom@schank.ch".freeze]
  s.executables = ["cider-ci_flay".freeze, "cider-ci_flog".freeze]
  s.files = ["bin/cider-ci_flay".freeze, "bin/cider-ci_flog".freeze]
  s.homepage = "https://github.com/cider-ci/cider-ci_ruby-support".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.4".freeze
  s.summary = "Cider-CI support for Ruby and Ruby on Rails projects".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.11"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["= 0.35.1"])
      s.add_runtime_dependency(%q<flay>.freeze, ["~> 2.6.1"])
      s.add_runtime_dependency(%q<flog>.freeze, ["~> 4.3.2"])
      s.add_runtime_dependency(%q<mime-types>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.11"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rubocop>.freeze, ["= 0.35.1"])
      s.add_dependency(%q<flay>.freeze, ["~> 2.6.1"])
      s.add_dependency(%q<flog>.freeze, ["~> 4.3.2"])
      s.add_dependency(%q<mime-types>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.11"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rubocop>.freeze, ["= 0.35.1"])
    s.add_dependency(%q<flay>.freeze, ["~> 2.6.1"])
    s.add_dependency(%q<flog>.freeze, ["~> 4.3.2"])
    s.add_dependency(%q<mime-types>.freeze, [">= 0"])
  end
end
