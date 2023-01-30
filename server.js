const http = require('http');
const helloworld = require('./index');

const hostname = '0.0.0.0';
const port = 5000;

// Create the server
const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end(helloworld() + '\n');
});


server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});


module.exports = server;
