require "httparty"
require "json"
require "zimdb/version"
require "zimdb/hash"
require "zimdb/movie"

module Zimdb
  include HTTParty

  base_uri 'http://www.imdbapi.com'
  
  def self.version_string
    "Zimdb version #{Zimdb::VERSION}"
  end
end
