# -*- encoding: utf-8 -*-
# stub: exiftool_vendored 10.23.0 ruby lib

Gem::Specification.new do |s|
  s.name = "exiftool_vendored"
  s.version = "10.23.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Matthew McEachen"]
  s.date = "2016-07-21"
  s.description = "Vendored version of exiftool"
  s.email = ["matthew+github@mceachen.org"]
  s.homepage = "https://github.com/mceachen/exiftool_vendored"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "Vendored version of exiftool"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<exiftool>, [">= 0.7.0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<nokogiri>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<minitest-great_expectations>, [">= 0"])
      s.add_development_dependency(%q<minitest-reporters>, [">= 0"])
    else
      s.add_dependency(%q<exiftool>, [">= 0.7.0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<minitest-great_expectations>, [">= 0"])
      s.add_dependency(%q<minitest-reporters>, [">= 0"])
    end
  else
    s.add_dependency(%q<exiftool>, [">= 0.7.0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<minitest-great_expectations>, [">= 0"])
    s.add_dependency(%q<minitest-reporters>, [">= 0"])
  end
end
