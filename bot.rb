require 'twitter' #démarre Twitter
require 'pry' #mettre binding.pry pour vérifier une boucle

#clés API pour fonctions REST
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "1z06UhJvkUPBiZWiwdIoHZrvV"
  config.consumer_secret     = "JAAf0fTQpUzJBG6Ve8P6UtTTtnRUI6i3wx8cTzkd9WQtxwuCwP"
  config.access_token        = "753948089493356544-xRePSmAkFiC6v18eSr2t85DaupFjZ6v"
  config.access_token_secret = "6394dpGTYMrCaQWiZVMYXj6i5WCzS5LTuHdTD4M031wVi"
end
p client

#clés API pour fonctions Streaming
client = Twitter::Streaming::Client.new do |config|
 config.consumer_key        = '1z06UhJvkUPBiZWiwdIoHZrvV'
 config.consumer_secret     = 'JAAf0fTQpUzJBG6Ve8P6UtTTtnRUI6i3wx8cTzkd9WQtxwuCwP'
 config.access_token        = '753948089493356544-xRePSmAkFiC6v18eSr2t85DaupFjZ6v'
 config.access_token_secret = '6394dpGTYMrCaQWiZVMYXj6i5WCzS5LTuHdTD4M031wVi'
end
p client

topics = ["coffee", "tea"]
client.filter(track: topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end
