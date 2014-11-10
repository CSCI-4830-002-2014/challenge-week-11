// Run 'npm install' to install node dependencies
var express = require('express');
var app = express();

var mongo = require('mongoskin');
var username = 'hacker' // TODO
var password = 'mongodb' // TODO
var url = 'ds047940.mongolab.com:47940' // TODO
var db = mongo.db('mongodb://'+username+':'+password+'@'+url+'/yelp', {safe:true})
var app = express();

app.engine('.html', require('ejs').__express);
app.set('views', __dirname);
app.set('view engine', 'html');

app.get('/state/:state', function(req, res) {
    var query = {"state" : req.params.state};
    var projection = {};
    db.collection('business')
        .find(query,projection)
        .limit(1000)
        .sort({"review_count":-1})
        .toArray(function (err, items) {        
            res.render("business_map", {data: items});        
    });
});

app.listen(3000);
console.log('listening on port 3000');
