var http = require('http');
var url = require('url');
var path = require('path');
var fs = require('fs');
//[0] is node [1] is script name
var portNum = parseInt(process.argv[2]);
var dir = process.argv[3];

http.createServer(function(req, res) {
    var uri = url.parse(req.url).pathname;
    if (uri === '/' || uri === '' || uri == null) {
        uri = '/index.html'
    }
    var filename = path.join(dir, unescape(uri));
    res.writeHead(200, {
                'Content-Type': 'text/html'
            });
    fs.createReadStream(filename)
                        .pipe(res);
}).listen(portNum, '127.0.0.1');
console.log('Server ' + process.pid +' running at port '+portNum);