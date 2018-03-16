require './composite_base'
class Tree < CompositeBase
  member_of(:population)
  member_of(:classification)
end