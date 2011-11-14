# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "zimdb/version"

Gem::Specification.new do |s|
  s.name        = "zimdb"
  s.version     = Zimdb::VERSION
  s.authors     = ["Indro De"]
  s.email       = ["indro.de@gmail.com"]
  #s.homepage    = "http://ms.indrode.com/i/zimdb"
  s.homepage    = "https://github.com/indrode/zimdb"
  s.summary     = %q{Wrapper for imdbapi.com}
  s.description = %q{Access movie information from IMDb via the API offered by http://www.imdbapi.com/}

  s.rubyforge_project = "zimdb"
  
  s.files = [
    ".gitignore",
    "Gemfile",
    "README.md",
    "Rakefile",
    "zimdb.gemspec",
    "lib/zimdb.rb",
    "lib/zimdb/hash.rb",
    "lib/zimdb/movie.rb",
    "lib/zimdb/version.rb",
    "spec/fixtures/asdasd.json",
    "spec/fixtures/hangover.json",
    "spec/hash_spec.rb",
    "spec/movie_spec.rb",
    "spec/spec_helper.rb",
    "spec/zimdb_spec.rb"
  ]
  s.test_files = [
    "spec/hash_spec.rb",
    "spec/movie_spec.rb",
    "spec/spec_helper.rb",
    "spec/zimdb_spec.rb"
  ]
  
  s.require_paths = ["lib"]
  s.rubygems_version = Zimdb::VERSION
  
  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "httparty"
  s.add_development_dependency "rspec", "~> 2.6"
  s.add_development_dependency "fakeweb", "~> 1.3"

end
