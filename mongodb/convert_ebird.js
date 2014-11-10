var d3 = require('d3');
var fs = require('fs');

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

var ebirddata = fs.readFileSync('ebird1M.tsv').toString();
var json = d3.tsv.parse(ebirddata, mapfunc);

fs.writeFileSync('ebird1M.json', JSON.stringify(json));
