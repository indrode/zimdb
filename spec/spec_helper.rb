require 'bundler/setup'
require 'zimdb'
require 'fakeweb'

FakeWeb.allow_net_connect = false

RSpec.configure do |config|
  def fixture(filename)
    File.dirname(__FILE__) + '/fixtures/' + filename
  end
  
  config.color_enabled = true
  
  FakeWeb.register_uri(:get, "http://www.imdbapi.com/?t=Hangover", :body => open(fixture("hangover.json")))
  FakeWeb.register_uri(:get, "http://www.imdbapi.com/?t=The%20Hangover", :body => open(fixture("hangover.json")))
  FakeWeb.register_uri(:get, "http://www.imdbapi.com/?t=asdasd", :body => open(fixture("asdasd.json")))
  FakeWeb.register_uri(:get, "http://www.imdbapi.com/?i=tt0151804", :body => open(fixture("office_space.json")))
end