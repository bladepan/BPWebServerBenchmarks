var http = require('http');
var url = require('url');
var path = require('path');
var fs = require('fs');
//[0] is node [1] is script name
var portNum = parseInt(process.argv[2]);
var dir = process.argv[3];

var errorHandler=function(err){
        console.log(err);
        console.log(err.message);
};

http.createServer(function(req, res) {
    var uri = url.parse(req.url).pathname;
    var filename = path.join(dir, unescape(uri));
    res.writeHead(200, {
                'Content-Type': 'audio/example'
            });
    readable = fs.createReadStream(filename);


    var readBuf =[];
    var finish = false;

    var writeResponse = function(){
        var buf=readBuf[0];
        if (buf!=null) {
            var ret = res.write(buf);
            if (ret) {
                readBuf.shift();
            }else{
                readBuf.shift();
                res.once('drain', writeResponse);
            }
        }else if (finish) {
            res.end();
        }
    }

    readable.on('readable', function() {
        var chunk;
        while (null !== (chunk = readable.read())) {
            //console.log('got %d bytes of data', chunk.length);
            readBuf.push(chunk);
        }
        writeResponse();
    });
    readable.on('end', function() {
        finish = true;
        writeResponse();
    });

    readable.on('error',errorHandler);
    res.on('error',errorHandler);

    //The callback is given the three arguments, (err, bytesRead, buffer).
}).listen(portNum, '127.0.0.1');
console.log('Server ' + process.pid +' running at port '+portNum);