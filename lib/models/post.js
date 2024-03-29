// Generated by CoffeeScript 1.4.0
(function() {
  var mongoose, postSchema;

  mongoose = require('mongoose');

  postSchema = mongoose.Schema({
    title: String,
    excerpt: String,
    imageUrl: String,
    tags: [String],
    url: String,
    created: Date
  });

  module.exports = mongoose.model('Post', postSchema);

}).call(this);
