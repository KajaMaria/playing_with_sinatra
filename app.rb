
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

require 'pry'
require 'capybara'

get '/Dan' do
  'Some typing'
end

get '/random-cat' do
  @name = Cat.new.name
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/form-cat' do
  erb(:form_cat)
end

binding.pry
