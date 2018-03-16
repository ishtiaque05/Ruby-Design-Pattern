require './generic_parser'
class JsonParser < GenericParser
  def parse
    puts 'An instance of the JsonParser class received the parse message'
  end
end