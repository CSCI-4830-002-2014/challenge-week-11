import sys
import csv

out = open('tist.json','w')
with open('tist.csv','r') as f:
	num = 0
	for line in f:
		num = num + 1
		i=1
		for word in line.split(','):
			if len(line.split(','))>10:
				break
			elif i == 1:
				out.write('{"visit_id": ' + word + ',\n')
			elif i == 2:
				out.write('\t"country": "' + word + '",\n')
			elif i == 3:
				out.write('\t"cluster_id": ' + word + ',\n')
			elif i == 4:
				out.write('\t"location": {"id": ' + word + ',\n')
			elif i == 5:
				out.write('\t\t"name": "' + word + '",\n')
			elif i == 6:
				out.write('\t\t"kind": "' + word + '",\n')
			elif i == 7:
				out.write('\t\t"type": "Point",\n\t\t"coordinates" : [' + word)
			elif i == 8:
				out.write(',' + word + ']\n\t\t},\n')
			elif i == 9:
				out.write('\t"quantifier" : {"id" : ' + word + ',\n')
			elif i == 10:
				out.write('\t\t"initials": "' + word.strip('\n') + '"}\n\t}\n')
			else:
				print(i)
			i=i+1
print(" Done.")
