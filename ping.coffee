#!/usr/bin/env coffee
# vim:ft=coffee ts=2 sw=2 et :
# -*- mode:coffee -*-

request = require('request')
request('http://hubot-ktmt.herokuapp.com/', (error, response, body) ->
  console.log body
)
