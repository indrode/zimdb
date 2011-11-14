##What is ZIMDb?

Unfortunately, the #1 movie resource website IMDb does not provide a public API for developers. However, there are a bunch of services that can help us out, such as [http://www.imdbapi.com/](http://www.imdbapi.com/) by Brian Fritz. ZIMDb is a simple API wrapper for the imdbapi.com service written in and for Ruby.

Install the gem and require it, or add it to you`Gemfile` in Rails.

	gem install zimdb

Now you can do things like this:

	movie = Zimdb::Movie.new(:title => "The Hangover")
	movie.title        # => "The Hangover"
	movie.year         # => 2009
	movie.genre	       # => "Comedy, Crime"
	movie.director     # => "Todd Phillips"
	# and more...

Check out [this spec file](https://github.com/indrode/zimdb/blob/master/spec/movie_spec.rb) to see which movie attributes are currently available.

##License
Copyright (c) 2011 Indro De

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.