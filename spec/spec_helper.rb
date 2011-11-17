require 'bundler/setup'
require 'zimdb'
require 'fakeweb'

RSpec.configure do |config|
  def fixture(filename)
    File.dirname(__FILE__) + '/fixtures/' + filename
  end
  
  FakeWeb.register_uri(:get, "http://www.imdbapi.com/?t=hangover", :body => open(fixture("hangover.json")).read)
  FakeWeb.register_uri(:get, "http://www.imdbapi.com/?t=hangover", :body => open(fixture("asdasd.json")).read)
  
end