# -*- encoding: utf-8 -*-
# stub: zencoder-fetcher 0.2.8 ruby lib

Gem::Specification.new do |s|
  s.name = "zencoder-fetcher".freeze
  s.version = "0.2.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chris Warren".freeze, "Brandon Arbini".freeze]
  s.date = "2012-03-28"
  s.description = "Fetches notifications from Zencoder for local development where Zencoder is unable to communicate to the server, usually because it's localhost.".freeze
  s.email = ["chris@zencoder.com".freeze, "b@zencoder.com".freeze]
  s.executables = ["zencoder_fetcher".freeze]
  s.files = ["bin/zencoder_fetcher".freeze]
  s.homepage = "http://github.com/zencoder/zencoder-fetcher".freeze
  s.requirements = ["A Zencoder Account - http://zencoder.com".freeze]
  s.rubygems_version = "2.6.4".freeze
  s.summary = "Fetches notifications from Zencoder for local development.".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<trollop>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<httparty>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<json>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<i18n>.freeze, [">= 0"])
    else
      s.add_dependency(%q<trollop>.freeze, [">= 0"])
      s.add_dependency(%q<httparty>.freeze, [">= 0"])
      s.add_dependency(%q<json>.freeze, [">= 0"])
      s.add_dependency(%q<activesupport>.freeze, [">= 0"])
      s.add_dependency(%q<i18n>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<trollop>.freeze, [">= 0"])
    s.add_dependency(%q<httparty>.freeze, [">= 0"])
    s.add_dependency(%q<json>.freeze, [">= 0"])
    s.add_dependency(%q<activesupport>.freeze, [">= 0"])
    s.add_dependency(%q<i18n>.freeze, [">= 0"])
  end
end
