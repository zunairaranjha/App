# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Post.destroy_all
require 'faker'
NUM_POSTS = 1
NUM_POSTS.times do 
  #puts " hello"

    post=Post.create(title:Faker::Book.title,content:Faker::Lorem.paragraph,created_at:'022-08-12 08:08:41.061280',updated_at:'022-08-12 08:08:41.061280')
    p "Created #{Post.count} Posts"
 
  
    end