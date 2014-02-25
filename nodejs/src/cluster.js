var cluster = require('cluster');


if (cluster.isMaster) {
  
  var workerNum = require('os').cpus().length;
  if (process.argv.length>=5) {
    workerNum = parseInt(process.argv[4]);
  }

  console.log('start '+workerNum+' workers!');

  // Fork workers.
  for (var i = 0; i < workerNum; i++) {
    cluster.fork();
  }

  cluster.on('exit', function(worker, code, signal) {
    console.log('worker ' + worker.process.pid + ' died');
  });
} else {
  // Workers can share any TCP connection
  // In this case its a HTTP server
  require('./singleprocess.js')
}