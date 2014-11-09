import sys
import csv

filesome = sys.argv[1:]
csv_filename = filesome[0]
print "Opening CSV file: ",csv_filename 
f=open(csv_filename, 'r')
 
tabin = csv.reader(f, dialect=csv.excel_tab)
commaout = csv.writer(sys.stdout, dialect=csv.excel)
 
for row in tabin:
  commaout.writerow(row)