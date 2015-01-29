require 'nokogiri'
# doc = Nokogiri::HTML(File.open('clisttest.html'))
doc = Nokogiri::HTML('http://chicago.craigslist.org/')

text_array = []
doc.search('.txt').map { |text|  text_array.push(text.inner_text)}
p text_array

