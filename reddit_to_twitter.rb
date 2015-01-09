#myapp.rb
require 'sinatra'
require 'twitter'

get '/' do
  "Hello World"
  # data = JSON.parse(request.body.read)
end
