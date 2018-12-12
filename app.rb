require 'sinatra'

get '/random-cat' do
  @name = ["Dave", "Fred", "John"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
