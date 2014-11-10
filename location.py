import json 		# JSON


jsonData = open("business.json")
data = ""

for line in jsonData:
	jsonObject = json.loads(line)
	jsonObject["location"] = { "type" : "Point", "coordinates": [jsonObject["longitude"],jsonObject["latitude"]] }
	data += json.dumps(jsonObject)+"\n"

with open("business.modified.json", 'w') as outfile:
			outfile.write(data)