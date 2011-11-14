require 'zimdb'
require 'rspec'

def get_movie_year
  movie = Zimdb::Movie.new(:title => "Hangover")
  movie.year
end

describe "simple zimdb test" do
  it "should get movie information and return title" do
    get_movie_year.should eq(2009)
  end
end