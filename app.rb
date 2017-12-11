require 'sinatra/base'
require './models/link'

class BookmarkManager <Sinatra::Base

get '/' do
	@links = Link.all
  erb :homepage
end

run! if app_file == $0
end