require './composite_base'
class Tiger < CompositeBase
  member_of(:population)
  member_of(:classification)

end