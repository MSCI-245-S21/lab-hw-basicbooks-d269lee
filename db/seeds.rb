# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
case Rails.env
when "development"
  Book.create( title: "Dune", author: "Frank Herbert", rating: 5 )
  Book.create( title: "Dandelion Wine", author: "Ray Bradbury", rating: 0 )
  Book.create( title: "The Hitchhiker's Guide to the Galaxy",
               author: "Douglas Adams", rating: 4 )
  Book.create( title: "James and the Giant Peach", author: "Roald Dahl", rating: 5 )
  Book.create( title: "Charlie and the Chocolate Factory", author: "Roald Dahl", rating: 3 )
  Book.create( title: "Matilda", author: "Roald Dahl", rating: 2 )
  Book.create( title: "The Lord Of The Rings", author: "J.R.R. Tolkien", rating: 0 )
  Book.create( title: "Ender's Game", author: "Orson Scott Card", rating: 4 )
  Book.create( title: "Dune", author: "Frank Herbert", rating: 5 )
  Book.create( title: "Slaughterhouse-Five", author: "Kurt Vonnegut", rating: 3 )
  Book.create( title: "Snow Crash", author: "Neal Stephenson", rating: 3 )
  Book.create( title: "Cryptonomicon", author: "Neal Stephenson", rating: 5 )
when "production"
  # no seed data for production
end
