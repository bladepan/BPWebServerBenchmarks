BPWebServerBenchmarks
=====================

web server benchmark scripts, configurations and source code 

Just getting started....

Installing nginx
You may want to compile nginx to use local directories, configure it like this (you need to download pcre and zlib source code)

./configure --prefix=/home/pan/nginx --pid-path=/home/pan/nginx/logs/nginx.pid --lock-path==/home/pan/nginx/logs/nginx.lock --with-pcre=/home/pan/Downloads/pcre-8.34 --with-zlib=/home/pan/Downloads/zlib-1.2.8


You may also need to change the max files a process can open, in ubuntu, it is adding two lines in  /etc/security/limits.conf, like this

pan   hard   nofile   65535

pan   soft   nofile   65535

You can verify the change by : ulimit -a


all tests are using keepalive feature

Benchmark tools:
ApacheBench (or ab), a command line program bundled with Apache HTTP Server
Httperf, a command line program originally developed at HP Labs

The result will be published in the project wiki.

The following web servers will be benchmarked
1. Nginx
2. Apache httpd
3. Go Http Server -- Go build-in http server
4. Node.js Http Server -- Node.js buid-in http server

You need install necessary parts to run the benchmarks.

1. Serving static files
The web server will serve static files under staticfiles directory.
The files size of these files are selected based on some real world senarios. 
Html file:
home page html from facebook.com is 101KB, 
RPC request:
A periodical rpc call from facebook web page is generally from 30B to 500B. 
RPC calls by facebook messenger is from 1.5k to 2.6k.
RPC call for story update is about 22.6k.
Pictures:



2. Reverse Proxy



reference
http://en.wikipedia.org/wiki/Web_server_benchmarking
