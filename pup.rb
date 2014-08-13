require 'nokogiri'
require 'open-uri'
require 'awesome_print'

url = open("pup.html")

page = Nokogiri::HTML(url.read)
results = []

# puts page.css(".row a")

results = page.css(".row a").map do |post|
  {row: post.text, url: post["href"]}
end

ap results




