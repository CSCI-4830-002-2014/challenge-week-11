#!/usr/bin/env ruby

require "json"
require "csv"

# businesses = IO.readlines("yelp_academic_dataset_business.json").map do |line|
#   b = JSON.parse(line)
#   b["location"] = {
#     "type" => "Point",
#     "coordinates" => [b["longitude"], b["latitude"]]
#   }
#   b
# end
# IO.write "businesses.mongo.json", businesses.to_json

print CSV.parse("tist.csv").to_json
# CSV.foreach("tist.csv") do |row|
#   # b = JSON.parse(row)
#   puts {:visit_id => row[0]}.to_json
#   # rowson = '{"visit_id": row[0]}'.to_json
#   # print rowson
#   sleep(1)
# end