var http = require('http');
var PORT = 8080;
var exec = require('child_process').exec, child;

function handleRequest(request, response) {
  if (request.url === '/standby') {
    child = exec('pm-suspend',
      function (error, stdout, stderr) {
        console.log('Standby request at: ' + new Date() )
        if (error !== null) {
          console.log('exec error: ' + error);
          response.end('exec error: ' + error);
        }
    });
  } else { // default
    response.writeHead(200, {"Content-Type": "text/html"});
    response.end('Press the red button to standby. <a style="color:red;" href="/standby">Button</a> ');
  }
}

var server = http.createServer(handleRequest);
server.listen(PORT, function(){
    console.log("web-pm-suspend listening on port: %s", PORT);
});
