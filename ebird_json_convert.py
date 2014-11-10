import json 		# JSON
import csv

tsvData = csv.reader( open("ebird.txt"), delimiter='\t' )
jsonData = []

for line in tsvData:
    jsonObject = {"id": line[0], "taxonomic_order": line[1], "category": line[2], "name":{"common": line[3], "scientific": line[4] }, "subspecies_name":{"common": line[5], "scientific": line[6] }, "observation_count": line[7], "age_sex": line[9], "location":{"type":"Point", "coordinates":[ line[21], line[22] ], "country": line[10], "country_code": line[11], "state": line[12], "state_code": line[13], "county": line[14], "county_code": line[15], "locality": line[18], "locality_id": line[19], "locality_type": line[20] }, "code":{"breeding_bird_las": line[8], "iba": line[16], "bcr": line[17] }, "date":{"observation": line[22], "observation_start_time": line[23] }, "comments":{"trip": line[24], "species": line[25] }, "observer":{"id": line[26], "firstName": line[27], "lastName": line[28] }, "sampling_event_id":line[29], "protocol_type":line[30], "project_code":line[31], "duration_minutes": line[32], "effort_distance": line[33], "effort_area":line[34], "number_of_observers":line[35], "species_reported":line[36], "group_id":line[37], "aprroved":line[38], "reviewed":line[39], "reason": line[40] }
    jsonData.append(jsonObject)

with open("ebird.modified.json", 'w') as outfile:
    outfile.write(json.dumps(jsonData, indent=4, sort_keys=True))