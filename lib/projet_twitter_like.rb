# ligne très importante qui appelle la gem.
require 'twitter'
  require 'dotenv'
  require 'pry'
  Dotenv.load
# n'oublie pas les lignes pour Dotenv ici…


# quelques lignes qui appellent les clés d'API de ton fichier .env
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
  end


  client.search('#bonjour_monde').take(25).each do |tweet|
  client.fav tweet
end
#end
# ligne qui permet de tweeter sur ton compte
#
