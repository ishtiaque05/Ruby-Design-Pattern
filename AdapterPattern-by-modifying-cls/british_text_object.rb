class BritishTextObject
  attr_reader :string, :size_mm, :colour
  def initialize(string, size_mm, color)
  	@string = string
  	@size_mm = size_mm
  	@colour = color
  end
end