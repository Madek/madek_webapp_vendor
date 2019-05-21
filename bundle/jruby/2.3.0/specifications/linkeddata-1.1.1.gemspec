# -*- encoding: utf-8 -*-
# stub: linkeddata 1.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "linkeddata".freeze
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Arto Bendiken".freeze, "Ben Lavender".freeze, "Gregg Kellogg".freeze]
  s.date = "2014-01-10"
  s.description = "A metadistribution of RDF.rb including a full set of parsing/serialization plugins.".freeze
  s.email = "public-rdf-ruby@w3.org".freeze
  s.homepage = "http://ruby-rdf.github.com/".freeze
  s.licenses = ["Public Domain".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2".freeze)
  s.rubyforge_project = "datagraph".freeze
  s.rubygems_version = "2.6.6".freeze
  s.summary = "Linked Data for Ruby.".freeze

  s.installed_by_version = "2.6.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rdf>.freeze, [">= 1.1.1"])
      s.add_runtime_dependency(%q<rdf-aggregate-repo>.freeze, [">= 1.1.0"])
      s.add_runtime_dependency(%q<rdf-isomorphic>.freeze, [">= 1.1.0"])
      s.add_runtime_dependency(%q<rdf-json>.freeze, [">= 1.1.0"])
      s.add_runtime_dependency(%q<rdf-microdata>.freeze, [">= 1.1.1"])
      s.add_runtime_dependency(%q<rdf-n3>.freeze, [">= 1.1.0"])
      s.add_runtime_dependency(%q<rdf-rdfa>.freeze, [">= 1.1.1"])
      s.add_runtime_dependency(%q<rdf-rdfxml>.freeze, [">= 1.1.0"])
      s.add_runtime_dependency(%q<rdf-trig>.freeze, [">= 1.1.2"])
      s.add_runtime_dependency(%q<rdf-trix>.freeze, [">= 1.1.0"])
      s.add_runtime_dependency(%q<rdf-turtle>.freeze, [">= 1.1.2"])
      s.add_runtime_dependency(%q<json-ld>.freeze, [">= 1.1.1"])
      s.add_runtime_dependency(%q<sparql>.freeze, [">= 1.1.2"])
      s.add_runtime_dependency(%q<sparql-client>.freeze, [">= 1.1.1"])
      s.add_runtime_dependency(%q<nokogiri>.freeze, [">= 1.6.1"])
      s.add_runtime_dependency(%q<equivalent-xml>.freeze, [">= 0.4.0"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0.8.7"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 2.14"])
      s.add_development_dependency(%q<rdf-spec>.freeze, [">= 1.1.0"])
    else
      s.add_dependency(%q<rdf>.freeze, [">= 1.1.1"])
      s.add_dependency(%q<rdf-aggregate-repo>.freeze, [">= 1.1.0"])
      s.add_dependency(%q<rdf-isomorphic>.freeze, [">= 1.1.0"])
      s.add_dependency(%q<rdf-json>.freeze, [">= 1.1.0"])
      s.add_dependency(%q<rdf-microdata>.freeze, [">= 1.1.1"])
      s.add_dependency(%q<rdf-n3>.freeze, [">= 1.1.0"])
      s.add_dependency(%q<rdf-rdfa>.freeze, [">= 1.1.1"])
      s.add_dependency(%q<rdf-rdfxml>.freeze, [">= 1.1.0"])
      s.add_dependency(%q<rdf-trig>.freeze, [">= 1.1.2"])
      s.add_dependency(%q<rdf-trix>.freeze, [">= 1.1.0"])
      s.add_dependency(%q<rdf-turtle>.freeze, [">= 1.1.2"])
      s.add_dependency(%q<json-ld>.freeze, [">= 1.1.1"])
      s.add_dependency(%q<sparql>.freeze, [">= 1.1.2"])
      s.add_dependency(%q<sparql-client>.freeze, [">= 1.1.1"])
      s.add_dependency(%q<nokogiri>.freeze, [">= 1.6.1"])
      s.add_dependency(%q<equivalent-xml>.freeze, [">= 0.4.0"])
      s.add_dependency(%q<yard>.freeze, [">= 0.8.7"])
      s.add_dependency(%q<rspec>.freeze, [">= 2.14"])
      s.add_dependency(%q<rdf-spec>.freeze, [">= 1.1.0"])
    end
  else
    s.add_dependency(%q<rdf>.freeze, [">= 1.1.1"])
    s.add_dependency(%q<rdf-aggregate-repo>.freeze, [">= 1.1.0"])
    s.add_dependency(%q<rdf-isomorphic>.freeze, [">= 1.1.0"])
    s.add_dependency(%q<rdf-json>.freeze, [">= 1.1.0"])
    s.add_dependency(%q<rdf-microdata>.freeze, [">= 1.1.1"])
    s.add_dependency(%q<rdf-n3>.freeze, [">= 1.1.0"])
    s.add_dependency(%q<rdf-rdfa>.freeze, [">= 1.1.1"])
    s.add_dependency(%q<rdf-rdfxml>.freeze, [">= 1.1.0"])
    s.add_dependency(%q<rdf-trig>.freeze, [">= 1.1.2"])
    s.add_dependency(%q<rdf-trix>.freeze, [">= 1.1.0"])
    s.add_dependency(%q<rdf-turtle>.freeze, [">= 1.1.2"])
    s.add_dependency(%q<json-ld>.freeze, [">= 1.1.1"])
    s.add_dependency(%q<sparql>.freeze, [">= 1.1.2"])
    s.add_dependency(%q<sparql-client>.freeze, [">= 1.1.1"])
    s.add_dependency(%q<nokogiri>.freeze, [">= 1.6.1"])
    s.add_dependency(%q<equivalent-xml>.freeze, [">= 0.4.0"])
    s.add_dependency(%q<yard>.freeze, [">= 0.8.7"])
    s.add_dependency(%q<rspec>.freeze, [">= 2.14"])
    s.add_dependency(%q<rdf-spec>.freeze, [">= 1.1.0"])
  end
end
