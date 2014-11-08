import json

import fileinput

##for line in fileinput.input(['yelp_dataset_challenge_academic_dataset.json']):
##    json_data = json.loads(line)
##    entry = {'location': {'type' : "Point", "coordinates" : [json_data["longitude"], json_data["latitude"]]}}
##    print(entry);
##    json_data.append(entry);
##    #print(json_data);
##    #json_data["location"]["type"] = "Point"
##    #json_data["location"]["coordinates"] = [json_data["longitude"], json_data["latitude"]]
##
##    with open('out.json', 'w') as f:
##        f.write(json.dumps(json_data))
##        print(json_data);

import json

with open('out.json','w') as f:
    f.truncate()

for line in fileinput.input(['yelp_dataset_challenge_academic_dataset.json']):
    json_data = json.loads(line);
    entry = {'location': {'type' : "Point", "coordinates" : [json_data["longitude"], json_data["latitude"]]}}

    with open('tmp.json', 'w') as f:
        f.truncate()
        f.write(line)
        
    with open('tmp.json', 'r') as f:
        data = json.load(f);
        

    data.update(entry)
    with open('out.json', 'a') as f:
        json.dump(data, f)
