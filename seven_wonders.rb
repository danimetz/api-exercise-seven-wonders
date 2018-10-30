require 'httparty'
require 'pry'
require 'awesome_print'
#Starter Code:
seven_wonders = ["Great Pyramid of Giza", "Ishtar Gate", "Colossus of Rhodes", "Pharos of Alexandria", "Statue of Zeus at Olympia", "Temple of Artemis", "Mausoleum at Halicarnassus"]

longlat = {}
seven_wonders.each do |place|
  response = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{place}&key=AIzaSyAXJXJGTmNK53O6KaXI5NG78n0ggUDowP0")
  #puts place_ids << response.parsed_response["place_id"]
  longlat[place]= response.parsed_response["results"][0]["geometry"]["location"]
end

ap longlat




#Example Output:
#{"Great Pyramind of Giza"=>{"lat"=>29.9792345, "lng"=>31.1342019}, "Hanging Gardens of Babylon"=>{"lat"=>32.5422374, "lng"=>44.42103609999999}, "Colossus of Rhodes"=>{"lat"=>36.45106560000001, "lng"=>28.2258333}, "Pharos of Alexandria"=>{"lat"=>38.7904054, "lng"=>-77.040581}, "Statue of Zeus at Olympia"=>{"lat"=>37.6379375, "lng"=>21.6302601}, "Temple of Artemis"=>{"lat"=>37.9498715, "lng"=>27.3633807}, "Mausoleum at Halicarnassus"=>{"lat"=>37.038132, "lng"=>27.4243849}}
