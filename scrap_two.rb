# scrapper.rb
require 'nokogiri'
require 'open-uri'
require 'awesome_print'


dog_regex = (/puppy|Puppy|pup|Pup|Dog|dog/)



  url = open("today.html").read
  page = Nokogiri::HTML(url)

  results = []

  results = page.css(".row").select do |link|
    ap link.text
  end






# def filter_links(rows, regex)

three methods:
one: search date
two: search for puppy
three: searchfor images

each method will have an input and an output
one: input: rows, date



# def get_todays_rows(results, date)
#   matches = get_page_results().match(/\AAug 12\z/)
#   puts matches
# end

# get_todays_rows(get_page_results, "Aug 12")






