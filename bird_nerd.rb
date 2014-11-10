require 'json'

def consume_tsv(file)
  puts 'File reading.'

  File.foreach(file).map do |line|
    line.delete("\n").split("\t")
  end
end

def extract_headers_from(tsv)
  puts 'Headers extracting.'
  tsv.shift
end

def hash_tsv(hdrs, tsv)
  puts 'File hashing.'

  tsv.map! do |row|
    Hash[hdrs.zip(row)].delete_if { |k, v| v.nil? || v.empty? }
  end
end

def group_similar_indices(input, key:, group:)
  puts 'Grouping indices.'

  input.map! do |hash|
    hash[key] = hash.select { |k, v| group.include? k }
    hash.delete_if { |k, v| group.include? k }
  end
end

def bulk_group(hash, groups)
  groups.each do |k, v|
    group_similar_indices hash, key: k, group: v
  end

  hash
end

def groups
  {
    'OBSERVER'    => ['FIRST NAME', 'LAST NAME', 'OBSERVER ID'],
    'STATUS'      => ['REVIEWED', 'APPROVED'],
    'LOCATION'    => ['COUNTRY', 'COUNTRY CODE', 'STATE', 'STATE CODE', 'COUNTY',
                      'COUNTY CODE', 'LOCALITY ID', 'LOCALITY TYPE'],
    'COORDINATES' => ['LONGITUDE', 'LATITUDE']
  }
end

def write_to_file(data)
  puts 'Writing to file.'
  n = 80
  chunked = data.each_slice((data.size/n.to_f).round).to_a

  chunked.each_with_index do |chunk, idx|
    File.open("ebird/ebird#{idx}.json", "w") { |file| file.write chunk.to_json }
  end
end

consumed_tsv = consume_tsv 'ebird1M.txt'
headers = extract_headers_from consumed_tsv
hashed_tsv = hash_tsv headers, consumed_tsv
grouped = bulk_group hashed_tsv, groups
write_to_file grouped

puts 'Complete'
