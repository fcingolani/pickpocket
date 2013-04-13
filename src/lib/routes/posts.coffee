Post = require '../models/post'

module.exports.index = (req, res)->
  Post
    .find()
    .sort('-created')
    .exec (err, posts) ->
      res.render 'posts-index', 
        posts: posts
