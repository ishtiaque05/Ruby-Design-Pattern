require './xml_parser'
require './json_parser'

puts 'Using the XmlParser'
parser = XmlParser.new
parser.parse

puts 'Using the JsonParser'
parser = JsonParser.new
parser.parse