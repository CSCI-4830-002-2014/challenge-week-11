require 'csv'
require 'mongo'
require 'json'

input_file = "tist.csv"
db   = Mongo::Connection.new.db('tist')
col  = db.collection('TistData')

puts "The collection has #{col.count} document(s) at start."
puts "Reading from #{input_file}"

CSV.foreach(input_file, :headers => false) do |row|

   visit_id,country,cluster_id,location_id,location_name,location_type,\
   	location_latt,location_long,quantifier_id,quantifier_initials = ( row )

   doc = { \
   	'visit_id' => visit_id.to_i, \
   	'country' => country, \
   	'cluster_id' => cluster_id.to_i, \
   	'location' => {'id' => location_id.to_i, 'name' => location_name, 'type' => location_type, 'coordinates' => [location_latt.to_f, location_long.to_f]}, \
   	'quantifier' => {'id' => quantifier_id.to_i, 'initials' => quantifier_initials} \
   }

   col.save(doc)

end

puts "The collection now has #{col.count} document(s)."