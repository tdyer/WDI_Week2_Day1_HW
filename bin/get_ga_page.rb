require "nokogiri"
require "open-uri"

page = Nokogiri::HTML(open("https://generalassemb.ly/learn/web-development"))

# Nokogiri supports CSS-style selectors
quote = page.css(".topic-intro-quote > .large-callout").text
puts "Quote is #{quote}"
