class JsonParser
  def initialize(parser)
  	@parser = parser
  end

  def parse
  	@parser.parse
  	puts 'An instance of the JsonParser class received the parse message'
  end
end