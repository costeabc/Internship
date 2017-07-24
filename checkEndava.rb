#!/usr/bin/ruby
require 'net/http'
require 'open-uri'

url= URI.parse('http://www.endava.com/en/Delivery-Centres/Cluj')
string= 'Cluj is now an important business destination'
page = Net::HTTP.get_response(url)
existsStr = page.body.include? string
if (existsStr && (page.code == "200")) then
puts "Textul exista in pagina, iar codul raspunsului este " + page.code + "."
else
puts "Nope"
end
