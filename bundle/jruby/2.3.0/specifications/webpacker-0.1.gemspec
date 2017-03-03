# -*- encoding: utf-8 -*-
# stub: webpacker 0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "webpacker".freeze
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Heinemeier Hansson".freeze]
  s.date = "2016-12-07"
  s.email = "david@basecamp.com".freeze
  s.homepage = "https://github.com/rails/webpacker".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "2.6.6".freeze
  s.summary = "Use Webpack to manage app-like JavaScript modules in Rails".freeze

  s.installed_by_version = "2.6.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, ["< 5.1", ">= 3.0.0"])
      s.add_runtime_dependency(%q<multi_json>.freeze, ["~> 1.2"])
    else
      s.add_dependency(%q<activesupport>.freeze, ["< 5.1", ">= 3.0.0"])
      s.add_dependency(%q<multi_json>.freeze, ["~> 1.2"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, ["< 5.1", ">= 3.0.0"])
    s.add_dependency(%q<multi_json>.freeze, ["~> 1.2"])
  end
end
