# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.create(name: "ASDFASF")
Artist.last.songs.create(title: "Song 1", play_count: 10, length: 100)
Artist.last.songs.create(title: "Song 2", play_count: 20, length: 200)
Artist.last.songs.create(title: "Song 3", play_count: 30, length: 300)
