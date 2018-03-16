require './generic_parser'
class XmlParser < GenericParser
  def parse
    puts 'An instance of the XmlParser class received the parse message'
  end
end