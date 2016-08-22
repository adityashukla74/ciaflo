require 'rubygems'
require 'open-uri'
require 'json'


p1 = open('http://www.forbes.com/top-colleges/list/2/#tab:rank')
cookie = p1.meta['set-cookie']
p2 = open('http://www.forbes.com/ajax/list/data?year=2016&uri=top-colleges&type=organization')
headers = { "Cookie" => cookie }
json = p2.read
data = JSON.parse(json)
puts data.inspect