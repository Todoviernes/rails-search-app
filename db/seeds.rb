# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.destroy_all

names = [
  "Beyonce",
  "Justin Bieber",
  "Tiesto",
  "Jay-Z",
  "Ray Charles",
  "Wu Tang Clan",
  "Beartooth",
  "Britney Spears",
  "Gap Band",
  "Sam Smith",
  "Lindsay Sterling",
  "Pantera",
  "Michel Jackson",
  "A Tibe Called Quest",
  "DragonForce",
  "Steve Miller Band",
  "Horse The Band",
  "Justin Timberlake",
  "Alan Jackson"

]

names.each do |band|
  Artist.create(name: band)
end

['Universal',
 'Virgin',
 'Atlantic',
 'Geffen'
].each do |name|
  Label.find_or_create_by name: name
end

['The Best of The Doors',
 'Waiting for the Sun',
 'Dark Side of the Moon',
 'Hot Fuss',
 'Battle Born',
 'Who Are You',
 'Live At Leeds',
 'No More Rain',
 'The X Files'
].each do |name|
  Album.find_or_create_by( name: name )
end