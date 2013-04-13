express   = require 'express'
    
api   = require './middleware/api'
posts = require './routes/posts'

module.exports = (config)->
  app = express()

  app.configure ()->
    require('mongoose').connect config.mongodb.url
    app.engine 'jade', require('jade').__express
    app.set 'view engine', 'jade'
    app.set 'views', __dirname + '/views'

  app.use api config.ifttt
  app.use express.static 'public'

  app.get '/', posts.index
        
  app
