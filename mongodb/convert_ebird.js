var d3 = require('d3');
var fs = require('fs');

var ebirddata = fs.readFileSync('ebird1k.txt').toString();
var json = d3.tsv.parse(ebirddata);

function mapfunc(r) {
	var d = {};
	// Lower-case, underscores
	for (key in r) {
		if (r[key]) {
			var newkey = key.trim().toLowerCase().replace(/ /g, '_');
			d[newkey] = r[key];
		}
	}
	
	// Format location
	if (('latitude' in d) || ('longitude' in d)) {
		d['location'] = { type: "Point", coordinates: [+d.latitude, +d.longitude] };
		delete d['latitude'];
		delete d['longitude'];
	}

	return d;
}

fs.writeFileSync('ebird.json', JSON.stringify(json.map(mapfunc)));
