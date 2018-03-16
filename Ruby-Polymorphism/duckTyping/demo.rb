require './generic_parser'
require './json_parser'
require './xml_parser'

parser = GenericParser.new
puts 'Using the XmlParser'
parser.parse(XmlParser.new)

puts 'Using the JsonParser'
parser.parse(JsonParser.new)