var http = require("http");

http.createServer(function (request, response) {
	request.resume();
	request.on("end", function() {
		response.writeHead(200, {
			'Content-Type': 'text/plain'
		});
		response.write("How are you?\n ");
		response.end('Hello http!');
	});
}).listen(8080);
