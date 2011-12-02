module Zimdb
  class Movie
    
    def initialize(params)
      @json = params[:id].nil? ? get_movie("t", URI::encode(params[:title])) : get_movie("i", params[:id])
    end
    
    def get_movie(param, val)
      JSON.parse(HTTParty.get("http://www.imdbapi.com/?#{param}=#{val}")).symbolize_keys
    end
    
    def response
      @json[:response] == "True" ? true : false
    end
    
    def year
      @json[:year].to_i
    end
    
    def title
      @json[:title]
    end

    def rated
      @json[:rated]
    end
    
    def released
      @json[:released]
    end
    
    def genre
      @json[:genre]
    end
    
    def director
      @json[:director]
    end
    
    def writer
      @json[:writer]
    end
    
    def actors
      @json[:actors]
    end
    
    def plot
      @json[:plot]
    end
    
    def poster
      @json[:poster]
    end
    
    def runtime
      @json[:runtime]
    end
    
    def rating
      @json[:rating].to_f
    end
    
    def votes
      @json[:votes].to_i
    end
    
    def imdb_id
      @json[:id]
    end
  end
end