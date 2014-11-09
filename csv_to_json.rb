require 'csv'
require 'json'

file = File.open 'tist.csv', 'r'

outputs = []
10.times { outputs << [] }

CSV.parse(file) do |line|
  outputs.sample <<
    {
      visit_id: line[0],
      country: line[1],
      cluster_id: line[2],
      location: {
        id: line[3],
        name: line[4],
        kind: line[5],
        type: 'Point',
        coordinates: [line[6], line[7]]
      },
      quantifier: {
        id: line[8],
        initials: line[9]
      }
    }
end

outputs.each_with_index do |output, idx|
  File.write "tist/tist#{idx}.json", output.to_json
end
