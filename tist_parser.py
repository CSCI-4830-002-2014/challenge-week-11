import json
json_list = open('tist.json', 'w')
with open('tist.csv') as unparsed_tist:
    for line in unparsed_tist:
       	seg_line = line.split(',')
       	if (len(seg_line)==10):
	       	json_list.write('{"visited_id" :' + seg_line[0] +",")
	       	json_list.write('"country" : "'+seg_line[1]+'",')
	       	json_list.write('"cluster_id" :'+seg_line[2]+',')
	       	json_list.write('"location" : {"id":'+seg_line[3]+',')
	       	json_list.write('"name" : "'+seg_line[4].replace('"','')+'",')
	       	json_list.write('"kind" : "'+seg_line[5]+'",')
	       	json_list.write('"type" : "'+"Point"+'",')
	       	json_list.write('"coordinates" : [' + seg_line[6] + "," +seg_line[7] +']},')
	       	json_list.write('"quantifier" : {"id":' + seg_line[8]+",")
	       	json_list.write('"initials" : "' + seg_line[9].strip('\n') + '"}}]\n')
json_list.close()