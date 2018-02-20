require './music_component'
# The 'Album' class is a 
# 'composite' class within this 
# implementation of the
# Composite pattern

class Album < MusicComponent
  # An Album has a title and
  # a reference to the 
  # parent component
  attr_accessor :parent, :title

  def initialize(title)
  	super()
  	@title = title
  end

end
