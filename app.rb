
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

get '/cat' do
  @name = Cat.new.name
  erb(:index)
end
