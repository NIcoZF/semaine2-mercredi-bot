# Bot twitter with ruby

_Little bot using the twitter gem (https://github.com/sferik/twitter)_


## Usage

```ruby
require 'twitter'
require 'dotenv'
Dotenv.load

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

client.update('My first twwet in Ruby !!!!')
```


## Good way to learn :

  * REST call to an API
  * Make safe his tokens (dotenv)
  * Have fun with ruby :smile:
