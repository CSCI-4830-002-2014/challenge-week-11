import csv
import sys
import json

fieldnames=["visit_id","country","cluster_id","location.id","location.name","location.kind","location.coordinates[0]","location.coordinates[1]","quantifier.id","quantifier.initials"]

def convert(filename):
	csv_filename = filename[0]
	print "Opening CSV file: ",csv_filename 
	f=open(csv_filename, 'r')
	csv_reader = csv.DictReader(f,fieldnames)
	json_filename = csv_filename.split(".")[0]+".json"
	print "Saving JSON to file: ",json_filename
	jsonf = open(json_filename,'w')
	for r in csv_reader:
		data = json.dumps({"visit_id" : r['visit_id'], "country" : r['country'], "cluster_id" : r['cluster_id'], "location" : {"id": r['location.id'],
					"name" : r['location.name'],
     				"kind" : r['location.kind'],
     				"type" : "Point",
     				"coordinates" : [r['location.coordinates[0]'],r['location.coordinates[1]']]
					},
					"quantifier" : {"id": r['quantifier.id'],
					"initials" : r['quantifier.initials']}
    })
		jsonf.write(data) 
	f.close()
	jsonf.close()

if __name__=="__main__":
		convert(sys.argv[1:])