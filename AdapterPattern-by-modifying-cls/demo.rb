require './adapt_british_text_object'

bto = BritishTextObject.new('hello', 40.5, :blue)

puts "British color: #{bto.color}"
puts "British text: #{bto.text}"
puts "British text inches: #{bto.size_inches}"

# lets modify the methods of single instance 
# The beauty of ruby.........on the fly class methods changes

class << bto
 def to_string
 	"Color: #{color.to_s}, text: #{text} and size: #{size_inches}"
 end
end

puts 'calling new method injected dynamically to_string'
puts bto.to_string