require './composite_base'

class Species < CompositeBase 
  composite_of(:classification)
end