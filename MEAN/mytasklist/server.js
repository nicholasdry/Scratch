var express = require('express');
var path = require('path');
var bodyParser = require('body-parser');

var index = require('./routes/index');
var tasks = require('./routes/tasks');

var app = express();

// View engine
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'egs');
app.engine('html', require('ejs').renderFile);
