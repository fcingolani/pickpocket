mongoose   = require 'mongoose'

postSchema = mongoose.Schema
  title: String
  excerpt: String
  imageUrl: String
  tags: [String]
  url: String
  created: Date

module.exports = mongoose.model 'Post', postSchema
