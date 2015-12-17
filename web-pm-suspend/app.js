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
    response.end('<body style="text-align:center"><a style="color: #EAEAEA;font-family: sans-serif;   text-align: center;background: #747474;text-decoration: none;font-size: 36vw;border-radius: 58%;padding: 1vw 4vw;" href="/standby">⌽</a></body>');
  }
}

var server = http.createServer(handleRequest);
server.listen(PORT, function(){
    console.log("web-pm-suspend listening on port: %s", PORT);
});
