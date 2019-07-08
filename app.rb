
require 'sinatra'

class Cat
  attr_reader :name
  def initialize
    @name = ["Amigo", "Oscar", "Viking", "Your mum's cat"].sample
  end
end

get '/' do
  'Hello world!'
end

get '/secret' do
  'Too much pressure'
end

get '/Dan' do
  'Some typing'
end

get '/random-cat' do
  @name = Cat.new.name
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  puts params 
  erb(:index)
end
