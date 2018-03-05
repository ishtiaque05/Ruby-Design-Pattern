require './writer_decorator'
class TimeStampingWriter < WriterDecorator
  def write_line(line)
  	puts "Inside TimeStampingWriter line: #{line}"
  	@real_writer.write_line("#{Time.new}: #{line}")
  end
end