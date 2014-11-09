import json 		# JSON
import csv

csvData = csv.reader( open("tist.csv") )
jsonData = []

for line in csvData:

    jsonObject = {"visit id": line[0], "country": line[1], "cluster_id": line[2], "location": {"id": line[3], "name": line[4], "kind": line[5], "type": "Point", "coordinates": [ float(line[6]) , float(line[7]) ] }, "quantifier": {"id": line[8], "initials": line[9] } }
    jsonData.append(jsonObject)

with open("tist.json", 'w') as outfile:
    outfile.write(json.dumps(jsonData, indent=4, sort_keys=True))