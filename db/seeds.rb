# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
artist1 = Artist.create(name:"Arty Basri",bio:" Well well well. My bio is...")
artist2 = Artist.create(name:"Arty Joe",bio:" The coolest bio...")
genre1 = Genre.create(name:"my_own_genre. sort of 80s but not")
song1 = Song.create(name:"The Final. No countdown involved.")
song2 = Song.create(name:"Feelings - how come they are sessions now?")
song1.genre = genre1
song2.genre = genre1
song1.artist = artist1
song2.artist = artist2
song1.save
song2.save