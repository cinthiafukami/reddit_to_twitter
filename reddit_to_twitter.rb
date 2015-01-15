require 'sinatra'
require 'twitter'
require 'redd'

class RedditToTwitter < Sinatra::Base

  reddit = Redd::Client::Unauthenticated.new

  reddit.comment_stream 'INSERT_SUBREDDIT_NAME' do |comment|
    tweet_body = comment.subreddit.title
    client = connect_to_twitter
    client.update(tweet_body)
  end

  def connect_to_twitter
    Twitter::REST::Client.new do |config|
      config.consumer_key        = "INSERT_CONSUMER_KEY"
      config.consumer_secret     = "INSERT_CONSUMER_SECRET"
      config.access_token        = "INSERT_ACCESS_TOKEN"
      config.access_token_secret = "INSERT_ACCESS_TOKEN_SECRET"
    end
  end

end