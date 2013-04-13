ifttt = require 'ifttt'
Post  = require '../models/post'

module.exports = (config) ->
  api = ifttt(config)
  
  api.on 'save_post', (data) ->
    data.tags = data.tags.split(',')
    data.created = new Date
    Post.create data, ()->
    
  api
