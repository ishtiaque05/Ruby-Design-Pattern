require './parser'
require './json_parser'
require './xml_parser'

puts 'Using the XmlParser'
parser = Parser.new
XmlParser.new(parser).parse

puts 'Using the JsonParser'
JsonParser.new(parser).parse

puts 'Using both Parsers!'
JsonParser.new(XmlParser.new(parser)).parse