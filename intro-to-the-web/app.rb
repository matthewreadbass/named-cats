require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'Hello!'
end

get '/secret' do
  'super-secret spy stuff'
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  erb(:index)
end