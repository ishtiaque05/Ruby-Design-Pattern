module Triangle
  def draw
  	"drawing triangle"
  end

  def self.extended(mod)
  	mod.type << :Triangle
  end
end