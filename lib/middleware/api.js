// Generated by CoffeeScript 1.4.0
(function() {
  var Post, ifttt;

  ifttt = require('ifttt');

  Post = require('../models/post');

  module.exports = function(config) {
    var api;
    api = ifttt(config);
    api.on('save_post', function(data) {
      data.tags = data.tags.split(',');
      data.created = new Date;
      return Post.create(data, function() {});
    });
    return api;
  };

}).call(this);
