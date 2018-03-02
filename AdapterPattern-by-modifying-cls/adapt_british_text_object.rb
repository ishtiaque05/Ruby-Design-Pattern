require './british_text_object'
# modifying the whole class just by requiring it and redeclaring it
class BritishTextObject
  def color
  	return colour
  end
  
  def text
  	return string
  end

  def size_inches
  	return size_mm / 25.4
  end
end