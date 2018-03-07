module Square
  def draw
  	"drawing square"
  end

  def self.extended(mod)
  	mod.type << :Square
  end
end