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

# trouver les tweets #bonjour_monde
  client.search('#bonjour_monde').take(20).each do |tweet|
  twitter_user = tweet.user.screen_name
  client.follow (twitter_user)
  end
#
#end
#end
# ligne qui permet de tweeter sur ton compte
#
