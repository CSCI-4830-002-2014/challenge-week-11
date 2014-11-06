// Run 'npm install' to install node dependencies
var express = require('express');
var app = express();

var mongo = require('mongoskin');
var username = 'chwi6683' 
var password = 'Apples2apples' // TODO
var url = 'ds049170.mongolab.com' // TODO
var db = mongo.db('mongodb://'+username+':'+password+'@'+url+':49170/yelp', {safe:true})

app.engine('.html', require('ejs').__express);
app.set('views', __dirname);
app.set('view engine', 'html');

app.get('/state/:state', function(req, res) {
    var query = {"state" : req.params.state};
    var projection = {};
    db.collection('business')
        .find(query,projection).sort( { review_count: -1 } )
        .limit(100)
        .toArray(function (err, items) {        
            res.render("business_map", {data: items});        
    });
});

app.listen(3000);
console.log('listening on port 3000');
