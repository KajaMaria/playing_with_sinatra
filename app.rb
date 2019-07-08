
require 'sinatra'

get '/' do
  'Hello world!'
end

get '/secret' do
  'Too much pressure'
end

get '/Dan' do
  'Some typing'
end

get '/cat' do
  erb(:index)
end
