require './discography'
require './album'
require './song'

beatles_discography = Discography.new('The Beatles')

# We create a few albums here to add to the discography
rubber_soul = Album.new('Rubber Soul')
revolver = Album.new('Revolver')
sgt_peppers = Album.new('Sgt. Pepper\'s Lonely Hearts Club Band')
abbey_road = Album.new('Abbey Road')

#-------------------------------------------------------------------

rubber_soul.add_child Song.new('Norwegian Wood')
rubber_soul.add_child Song.new('Nowhere Man')

revolver.add_child Song.new('Eleanor Rigby')
revolver.add_child Song.new('Tomorrow Never Knows')

sgt_peppers.add_child Song.new('With a Little Help from My Friends')
sgt_peppers.add_child Song.new('Getting Better')

abbey_road.add_child Song.new('Come Together')
abbey_road.add_child Song.new('Here Comes the Sun')

beatles_discography.add_child rubber_soul
beatles_discography.add_child revolver
beatles_discography.add_child sgt_peppers
beatles_discography.add_child abbey_road

puts 
puts 'OUTPUT DEMO'
puts 'Beatles Discography albums'
puts beatles_discography.children.map{ |album| album.title }

puts '------------------------End------------------------------'

puts 'Beatles Discography first albums songs'
puts beatles_discography.children.first.children.map{ |song| song.title }

puts '---------------------------------End----------------------'
norwegian_wood = beatles_discography.children.first.children.first	

puts 'Norwegian Wood belong to album'
puts norwegian_wood.parent.title
puts '---------------------------------End---------------------'

puts 'Norwegian Wood artists'
puts norwegian_wood.parent.parent.artist
puts '---------------------------------End---------------------'
