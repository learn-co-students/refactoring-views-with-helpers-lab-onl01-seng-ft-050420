# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
count = 0
10.times do
    count += 1
    Artist.create(name: "Artist #{count}")
end

song_count = 0
10.times do
    song_count += 1
    Artist.all.each {|artist| artist.songs.build(title: "song #{song_count}")}
end

song_alone_count = 0
2.times do
    song_alone_count += 1
    Song.create(title: "Song Alone #{song_alone_count}")
end
