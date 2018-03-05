require './numbering_writer'
require './simple_writer'
require './time_stamping_writer'
require './check_summing_writer'
require './writer_decorator'

puts 'Writing numbered line by chaining SimpleWriter with NumberingWriter'
writer = NumberingWriter.new(SimpleWriter.new('final.txt'))
writer.write_line('hello out there')

puts 'Chaining decorators demo:'
writer = CheckSummingWriter.new(
		 	TimeStampingWriter.new(
		 		NumberingWriter.new(
	 			 SimpleWriter.new('final.txt')
	 	 		)
	 	 	)
	 	 )


writer.write_line('Ok new line')