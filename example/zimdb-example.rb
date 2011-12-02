require 'zimdb'
require 'rspec'

def get_movie_year_by_title
  movie = Zimdb::Movie.new(:title => "Hangover")
  movie.year
end

def get_movie_year_by_id
  movie = Zimdb::Movie.new(:id => "tt1119646")
  movie.year
end

describe "simple zimdb test" do
  it "should get movie information by title and return year" do
    get_movie_year_by_title.should eq(2009)
  end
  
  it "should get movie information by id and return year" do
    get_movie_year_by_id.should eq(2009)
  end
end