require 'twitter' #démarre Twitter

#clés API pour fonctions REST
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "1z06UhJvkUPBiZWiwdIoHZrvV"
  config.consumer_secret     = "JAAf0fTQpUzJBG6Ve8P6UtTTtnRUI6i3wx8cTzkd9WQtxwuCwP"
  config.access_token        = "753948089493356544-xRePSmAkFiC6v18eSr2t85DaupFjZ6v"
  config.access_token_secret = "6394dpGTYMrCaQWiZVMYXj6i5WCzS5LTuHdTD4M031wVi"
end
p client

#bot qui tweet 
client.update("premier tweet #tropfière")
