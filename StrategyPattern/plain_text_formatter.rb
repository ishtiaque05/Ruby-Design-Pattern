class PlainTextFormatter
  def output_report(title, text)
	puts("***** #{title} *****")
	text.each do |line|
	  puts(line)
	end
  end
end