require 'spec_helper'

describe Hash do
  it "should symbolize keys" do
    hash_with_string_keys = { "Title" => "The Hangover", "Year" => "2009" }
    hash_with_string_keys.symbolize_keys
    hash_with_string_keys.should == { :title => "The Hangover", :year => "2009" }
  end
end