require './music_component'
# The 'Song' class is
# a 'leaf' class within
# this implementation
# of the Composite pattern.

class Song < MusicComponent
 # A song has a title and a reference
 # to the parent component
 attr_accessor :parent, :title

 def initialize(title)
 	super()
   @title = title	
 end
end