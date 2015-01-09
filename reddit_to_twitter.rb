#myapp.rb
require 'sinatra'
require 'twitter'

get '/' do
  data = JSON.parse(request.body.read)
end
