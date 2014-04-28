# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.delete_all
Song.delete_all
Comment.delete_all

a1 = Artist.create!(name: "Zedd", city: "Berlin")
a2 = Artist.create!(name: "TOKiMONSTA", city: "Tokyo")
a3 = Artist.create!(name: "Porter Robinson", city: "Amsterdam")
a4 = Artist.create!(name: "Tenashar", city: "Montreal")
a5 = Artist.create!(name: "Druture", city: "Atlanta")


s1 = Song.create!(name: "Shotgun", artist_id: a1.id )
s2 = Song.create!(name: "Clarity", artist_id: a1.id )
s3 = Song.create!(name: "Stay the Night", artist_id: a1.id )
s4 = Song.create!(name: "Go With It", artist_id: a2.id )
s5 = Song.create!(name: "Soul to Seoul", artist_id: a2.id)
s6 = Song.create!(name: "Mileena's Theme", artist_id: a2.id)


Comment.create!(content: "This is awesome.", song_id: s1.id)
Comment.create!(content: "Try out a different tempo.", song_id: s2.id)
Comment.create!(content: "Slow this part down.", song_id: s2.id)
Comment.create!(content: "Great work.", song_id: s3.id)
Comment.create!(content: "Where did you get the sample from?", song_id: s4.id)
Comment.create!(content: "You're work is awesome.", song_id: s5.id)
Comment.create!(content: "Could this go up an octave?", song_id: s6.id)
Comment.create!(content: "This is a cool mix.", song_id: s1.id)