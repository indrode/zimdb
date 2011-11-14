require 'spec_helper'

describe Zimdb do
  it 'should return the correct version string' do
    Zimdb.version_string.should == "Zimdb version #{Zimdb::VERSION}"
  end
  
  it 'should have a base_uri' do
    Zimdb.base_uri.should eql('http://www.imdbapi.com')
  end
end