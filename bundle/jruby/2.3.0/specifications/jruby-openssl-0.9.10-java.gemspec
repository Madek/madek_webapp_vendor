# -*- encoding: utf-8 -*-
# stub: jruby-openssl 0.9.10 java lib

Gem::Specification.new do |s|
  s.name = "jruby-openssl".freeze
  s.version = "0.9.10"
  s.platform = "java".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ola Bini".freeze, "JRuby contributors".freeze]
  s.date = "2015-08-20"
  s.description = "JRuby-OpenSSL is an add-on gem for JRuby that emulates the Ruby OpenSSL native library.".freeze
  s.email = "ola.bini@gmail.com".freeze
  s.homepage = "https://github.com/jruby/jruby-openssl".freeze
  s.licenses = ["EPL-1.0".freeze, "GPL-2.0".freeze, "LGPL-2.1".freeze]
  s.requirements = ["jar org.bouncycastle:bcpkix-jdk15on, 1.50".freeze, "jar org.bouncycastle:bcprov-jdk15on, 1.50".freeze]
  s.rubygems_version = "2.6.4".freeze
  s.summary = "JRuby OpenSSL".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<jar-dependencies>.freeze, ["~> 0.1.0"])
      s.add_development_dependency(%q<mocha>.freeze, ["~> 1.1.0"])
      s.add_development_dependency(%q<ruby-maven>.freeze, [">= 0"])
    else
      s.add_dependency(%q<jar-dependencies>.freeze, ["~> 0.1.0"])
      s.add_dependency(%q<mocha>.freeze, ["~> 1.1.0"])
      s.add_dependency(%q<ruby-maven>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<jar-dependencies>.freeze, ["~> 0.1.0"])
    s.add_dependency(%q<mocha>.freeze, ["~> 1.1.0"])
    s.add_dependency(%q<ruby-maven>.freeze, [">= 0"])
  end
end
