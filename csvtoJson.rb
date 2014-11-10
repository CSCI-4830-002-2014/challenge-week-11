#!/usr/bin/env ruby

 require 'csv'
 require 'json'

data = CSV.read("../yelp_data/tist.csv").to_json
puts data
#File.open("tist.json", 'w') { |file| file.write(data) }