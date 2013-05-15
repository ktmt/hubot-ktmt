var request = require('request');
request('http://hubot-ktmt.herokuapp.com/', function(error, response, body) {
  console.log(body);
})
