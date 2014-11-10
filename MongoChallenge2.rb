#!/usr/bin/env ruby

require "json"

businesses = IO.readlines("yelp_academic_dataset_business.json").map do |line|
  b = JSON.parse(line)
  b["location"] = {
    "type" => "Point",
    "coordinates" => [b["longitude"], b["latitude"]]
  }
  b
end
IO.write "businesses.mongo.json", businesses.to_json