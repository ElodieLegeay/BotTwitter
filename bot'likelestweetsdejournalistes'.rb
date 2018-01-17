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

#Pour liker tous les récents tweets de la liste de journalistes:
#On créé une array avec les noms
journalist_array = ["@Fatiha_Temmouri","@julian2lamancha","@GaetaneDeljurie","@JulianMattei"]
#On fait une boucle pour chaque nom de la liste
journalist_array.each do |method|
#Prends les tweets les plus récents des utilisateurs (par IDs)
tweets = client.user_timeline(method)
#On note les tweet IDs
puts (tweets)
#Et on les like
client.favorite(tweets)

end
