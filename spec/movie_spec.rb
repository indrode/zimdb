require 'spec_helper'

describe Zimdb::Movie do
  describe "by movie title" do
    before(:each) do
      @movie = Zimdb::Movie.new(:title => "Hangover")
      @movie.response.should == true
    end
    
    it "should return a false response if not found" do
      movie2 = Zimdb::Movie.new(:title => "asdasd")
      movie2.response.should == false
      movie2.title.should be_nil
    end
    
    it "should allow more than one word in movie title" do
      movie3 = Zimdb::Movie.new(:title => "The Hangover")
      movie3.response.should == true
      movie3.title.should == "The Hangover"
      movie3.year.should == 2009
    end
    
    it "should return the title" do
      @movie.title.should == "The Hangover"
    end
    
    it "should return the year" do
      @movie.year.should == 2009
    end
    
    it "should return the rating" do
      @movie.rated.should == "R"
    end
    
    it "should return the release date" do
      @movie.released.should == "5 Jun 2009"
    end
    
    it "should return the genre" do
      @movie.genre.should == "Comedy, Crime"
    end
    
    it "should return the director" do
      @movie.director.should == "Todd Phillips"
    end
    
    it "should return the writer" do
      @movie.writer.should == "Jon Lucas, Scott Moore"
    end
    
    it "should return the actors" do
      @movie.actors.should == "Zach Galifianakis, Bradley Cooper, Justin Bartha, Ed Helms"
    end
    
    it "should return the plot" do
      @movie.plot.should == "A Las Vegas-set comedy centered around three groomsmen who lose their about-to-be-wed buddy during their drunken misadventures, then must retrace their steps in order to find him."
    end
    
    it "should return the poster URL" do
      @movie.poster.should == "http://ia.media-imdb.com/images/M/MV5BMTU1MDA1MTYwMF5BMl5BanBnXkFtZTcwMDcxMzA1Mg@@._V1._SX320.jpg"
    end
    
    it "should return the runtime" do
      @movie.runtime.should == "1 hr 40 mins"
    end
    
    it "should return the rating" do
      @movie.rating.should == 7.9
    end
    
    it "should return the number of votes" do
      @movie.votes.should == 142757
    end
    
    it "should return the id" do
      @movie.imdb_id.should == "tt1119646"
    end
  end
  
  describe "by IMDB id" do
    before(:each) do
      @movie_by_id = Zimdb::Movie.new(:id => "tt0151804")
      @movie_by_id.response.should == true
    end
    
    it "should return the title" do
      @movie_by_id.title.should == "Office Space"
    end
    
    it "should return the year" do
      @movie_by_id.year.should == 1999
    end
    
    it "should return the id" do
      @movie_by_id.imdb_id.should == "tt0151804"
    end
  end
end
