#!/usr/bin/ruby
require 'net/http'
require 'open-uri'
require 'json'

url= URI.parse('http://www.endava.com/en/Delivery-Centres/Cluj')
string= 'Cluj is now an important business destination'
file = File.read('jsonFile.js')
data_hash = JSON.parse(file)
page = Net::HTTP.get_response(url)

data_hash.each do |key,value|
	value.encode(page.body.encoding)
	puts page.body.encoding
	puts value.encoding
	#includesValue = page.body.include? value
	#includesValue ? (print key) : (print "Nope")
end

existsStr = page.body.include? string
if (existsStr && (page.code == "200")) then
puts "Textul exista in pagina, iar codul raspunsului este " + page.code + "."
else
puts "Nope"
end

