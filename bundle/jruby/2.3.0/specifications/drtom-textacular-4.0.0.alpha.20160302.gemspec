# -*- encoding: utf-8 -*-
# stub: drtom-textacular 4.0.0.alpha.20160302 ruby lib

Gem::Specification.new do |s|
  s.name = "drtom-textacular".freeze
  s.version = "4.0.0.alpha.20160302"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ben Hamill".freeze, "ecin".freeze, "Aaron Patterson".freeze, "Greg Molnar".freeze]
  s.date = "2016-03-02"
  s.description = "Textacular exposes full text search capabilities from PostgreSQL, extending\n    ActiveRecord with scopes making search easy and fun!".freeze
  s.email = ["git-commits@benhamill.com".freeze, "ecin@copypastel.com".freeze]
  s.homepage = "http://textacular.github.com/textacular".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.6".freeze
  s.summary = "Textacular exposes full text search capabilities from PostgreSQL".freeze

  s.installed_by_version = "2.6.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<pg>.freeze, ["~> 0.14"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry-doc>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<activerecord>.freeze, ["<= 5.0", ">= 3.0"])
    else
      s.add_dependency(%q<pg>.freeze, ["~> 0.14"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<pry-doc>.freeze, [">= 0"])
      s.add_dependency(%q<activerecord>.freeze, ["<= 5.0", ">= 3.0"])
    end
  else
    s.add_dependency(%q<pg>.freeze, ["~> 0.14"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<pry-doc>.freeze, [">= 0"])
    s.add_dependency(%q<activerecord>.freeze, ["<= 5.0", ">= 3.0"])
  end
end
