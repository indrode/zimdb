# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "zimdb/version"

Gem::Specification.new do |s|
  s.name        = "zimdb"
  s.version     = Zimdb::VERSION
  s.authors     = ["Indro De"]
  s.email       = ["indro.de@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Wrapper for imdbapi.com}
  s.description = %q{Access movie information from IMDb via the API offered by http://www.imdbapi.com/}

  s.rubyforge_project = "zimdb"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_development_dependency "rspec", "~> 2.6"
end
