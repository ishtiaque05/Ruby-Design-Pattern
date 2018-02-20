require './music_component'
# The 'Discography' class is a
# 'composite' class within this
# implementation of the Composite
# pattern

class Discography < MusicComponent
  # A Discography has an artist
  # property

  attr_accessor :artist

  def initialize(artist)
  	super()
  	@artist = artist
  end	
end
