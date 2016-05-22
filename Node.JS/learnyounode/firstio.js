var fs = require('fs');
var file = fs.readFileSync(process.argv[2]);
var result = file.toString();

console.log(result.split('\n').length - 1);
