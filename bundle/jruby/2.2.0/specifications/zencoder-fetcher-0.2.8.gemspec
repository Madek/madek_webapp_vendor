# -*- encoding: utf-8 -*-
# stub: zencoder-fetcher 0.2.8 ruby lib

Gem::Specification.new do |s|
  s.name = "zencoder-fetcher"
  s.version = "0.2.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Chris Warren", "Brandon Arbini"]
  s.date = "2012-03-28"
  s.description = "Fetches notifications from Zencoder for local development where Zencoder is unable to communicate to the server, usually because it's localhost."
  s.email = ["chris@zencoder.com", "b@zencoder.com"]
  s.executables = ["zencoder_fetcher"]
  s.files = ["bin/zencoder_fetcher"]
  s.homepage = "http://github.com/zencoder/zencoder-fetcher"
  s.requirements = ["A Zencoder Account - http://zencoder.com"]
  s.rubygems_version = "2.4.8"
  s.summary = "Fetches notifications from Zencoder for local development."

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<trollop>, [">= 0"])
      s.add_runtime_dependency(%q<httparty>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_runtime_dependency(%q<i18n>, [">= 0"])
    else
      s.add_dependency(%q<trollop>, [">= 0"])
      s.add_dependency(%q<httparty>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<i18n>, [">= 0"])
    end
  else
    s.add_dependency(%q<trollop>, [">= 0"])
    s.add_dependency(%q<httparty>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<i18n>, [">= 0"])
  end
end
