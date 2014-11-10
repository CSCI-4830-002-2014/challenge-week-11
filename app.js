// Run 'npm install' to install node dependencies
var express = require('express');
var app = express();

var mongo = require('mongoskin');
var db = mongo.db("mongodb://siteUserAdmin:password@localhost:27017/test", {native_parser:true});

app.engine('.html', require('ejs').__express);
app.set('views', __dirname);
app.set('view engine', 'html');

app.get('/state/:state', function(req, res) {
    var query = {"state" : req.params.state, "review_count":{$gt:1800}};
    var projection = {};
    db.collection('businesses')
        .find(query,projection)
        
        .toArray(function (err, items) {    
     
            res.render("business_map", {data: items});        
    });
});

app.listen(3000);
console.log('listening on port 3000');
