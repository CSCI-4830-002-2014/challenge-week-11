require "json"
require "bson"

output = []

4.times { output << [] }

IO.readlines("yelp/yelp_academic_dataset_business.json").each do |line|
  biz = JSON.parse(line)
  biz["location"] = {
    "type" => "Point",
    "coordinates" => [biz["longitude"], biz["latitude"]]
  }

  output.sample << biz
end

output.each_with_index do |out, idx|
  IO.write "businesses#{idx}.mongo.json", out.to_json
end
