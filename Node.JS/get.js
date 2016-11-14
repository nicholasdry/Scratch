var http = require("http"), url = require("url");

http.createServer(function (request, response) {
	request.resume();
	request.on("end", function() {
	var _get = url.parse(request.url, true).query;
		response.writeHead(200, {
			'Content-Type': 'text/plain'
		});
		response.end("This page does not exist: " + _get['data']);
	});
}).listen(8080);
