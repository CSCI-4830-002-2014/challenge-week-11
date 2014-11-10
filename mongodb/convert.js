var d3 = require('d3');
var fs = require('fs');

var header = 'visit_id,country,cluster_id,' + 
             'loc_id,loc_name,loc_kind,latitude,longitude,' + 
			 'quant_id,quant_initials\n';

var tistdata = header + fs.readFileSync('tist.csv').toString();

var json = d3.csv.parse(tistdata);

// According to challenge description
function map1(r) {
	return {
		"visit_id" : +r.visit_id,
		"country" : r.country,
		"cluster_id" : +r.cluster_id,
		"location" : {
			"id"   : +r.loc_id,
			"name" : r.loc_name,
			"kind" : r.loc_kind,
			"type" : "Point",
			"coordinates" : [+r.latitude,+r.longitude]
		},
		"quantifier" : {
			"id": +r.quant_id,
			"initials" : r.quant_initials
		}
    };
}

// MongoDB conformant
function map2(r) {
	return {
		"visit_id"   : +r.visit_id,
		"country"    : r.country,
		"cluster_id" : +r.cluster_id,
		"id"         : +r.loc_id,
		"name"       : r.loc_name,
		"kind"       : r.loc_kind,
		"location" : {
			"type" : "Point",
			"coordinates" : [+r.latitude,+r.longitude]
		},
		"quantifier" : {
			"id": +r.quant_id,
			"initials" : r.quant_initials
		}
    };
}

var json = json.map(map2);

fs.writeFileSync('tist.json', JSON.stringify(json));
