BPWebServerBenchmarks
=====================

web server benchmark scripts, configurations and source code 

Just getting started....


Benchmark tools:
ApacheBench (or ab), a command line program bundled with Apache HTTP Server
Httperf, a command line program originally developed at HP Labs

The result will be published in the project wiki.

1. Serving static files
The web server will serve static files under staticfiles directory.
The files size of these files are selected based on some real world senarios. Like the home page html from facebook.com is 101KB, a periodical rpc call from facebook web page is generally from 30B to 300B.

A more clever way would be dynamically generate the files by configuration, this would be the next step.


2. Reverse Proxy



reference
http://en.wikipedia.org/wiki/Web_server_benchmarking
