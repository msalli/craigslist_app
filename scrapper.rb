# scrapper.rb
require 'nokogiri'
require 'open-uri'
require 'awesome_print'




# def filter_links(rows)
#       p rows.css(".date").text
#       p rows.css(".hdrlnk").text
# end

def get_todays_rows(doc, date_str)
   regex = (/puppy|pup|dog/)
   results = doc.css(".row").select do |row|
      row.css(".date").text == date_str && row.css(".hdrlnk").text.match(regex)
  end
  # filter_links(results)
end

def get_page_results(date_str)
  url = open("today.html").read
  page = Nokogiri::HTML(url)

  get_todays_rows(page, date_str)
end

def search(date_str)
  get_page_results(date_str)
end

# want to learn more about
# Time in ruby??
#   http://www.ruby-doc.org/stdlib-1.9.3/libdoc/date/rdoc/Date.html#strftime-method
today = Time.now.strftime("%b %d")
ap search(today)