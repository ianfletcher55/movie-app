require "http"

system "clear"

puts "Welcome to my movie database app! Here is the info for movies we have added so far:"

response = HTTP.get("http://localhost:3000/api/movies")
movies = response.parse

movies.each do |movie|
  puts movie
end