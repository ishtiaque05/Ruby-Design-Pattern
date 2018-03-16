class XmlParser
  def initialize(parser)
  	@parser = parser
  end

  def parse
  	@parser.parse
  	puts 'An instance of the XmlParser class received the parse message'
  end
end