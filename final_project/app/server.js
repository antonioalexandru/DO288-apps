const apm = require('elastic-apm-node').start({
  serviceName: 'apm-server'
  serverUrl: '9.212.159.145:9200',
})

const app = require('express')()

app.get('/', function (req, res) {
  res.send('Hello World!')
})

app.listen(3000)
var mysql = require('mysql');
process.on('uncaughtException', (err) => {
 console.log(`Caught exception: ${err}`);
});
const express = require('express')
const app = express()
const port = 3000
app.get('/', (req, res) =>{
var con = mysql.createConnection({
 host: process.env.DB,
 user: process.env.USER,
 password: process.env.PASS,
 database: process.env.DATAB
});
con.connect(function(err) {
 if (err) throw err;
 console.log("Connected!");
});
con.query('SELECT * from test2', function (err, rows, fields) {
 if (err) res.send(err)
 console.log('The solution is: ', rows)
 res.send(rows)
})
 })
app.listen(port, () => console.log(`Example app listening on port ${port}`))
