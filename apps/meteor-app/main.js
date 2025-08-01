const http = require("http");
const port = process.env.PORT || 3000;

http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "text/html" });
  res.end(
    "<h1>Hello from Meteor!</h1>" +
    "<p>Served by Node.js in Docker.</p>"
  );
}).listen(port, "0.0.0.0", () => {
  console.log(\`Listening on port \${port}\`);
});
