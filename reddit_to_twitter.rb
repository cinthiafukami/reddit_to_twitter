require 'sinatra'
require 'twitter'

class RedditToTwitter < Sinatra::Base

  post '/' do
    client = connect_to_twitter
    puts params
    data = JSON.parse(request.body.read).to_hash
    puts data
    client.update(data["title"])
  end

  def connect_to_twitter
    Twitter::REST::Client.new do |config|
      config.consumer_key        = "tKryxXxiORPQxuol2pIn0xYpm"
      config.consumer_secret     = "hh4Q9JcwS6qf6Lr9fpi9wGq1JbVYLWDa6N7SVCTNhkdAegthqN"
      config.access_token        = "269001389-8A9sIBhACPcksY83plUCuzy3hn3wcia5wMQJeXAc"
      config.access_token_secret = "mtMyTxVUh9MdAO76sbVMU3u7cUJKumCnm4WWhotP0y9K5"
    end
  end

end