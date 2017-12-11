require 'sinatra/base'
require './models/link'

class BookmarkManager <Sinatra::Base

get '/' do
  @links = Link.all
  erb :homepage
end

get '/newlink' do
  erb :newlink
end

post '/newlink' do
  Link.create(url: params['url'], title: params['title'])
  redirect '/'
end

run! if app_file == $0
end