# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
img1 = Image.create(url: 'https://www.marshallspetzone.com/blog/wp-content/uploads/2018/06/featured-image.jpg', likes: 0)

comment1 = Comment.create(content: 'soooo cute', image: img1)
comment2 = Comment.create(content: "OMG! s'cute", image: img1)