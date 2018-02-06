require './report'

HTML_FORMATTER = lambda do |context|
	puts('<html>')
	puts(' <head>')
	puts("
	<title>#{context.title}</title>")
	puts(' </head>')
	puts(' <body>')
	context.text.each do |line|
	puts("
	<p>#{line}</p>" )
	end
	puts(' </body>')
	puts('</html>')
  end

puts '################ HTML FORMAT OUTPUT ###################'
report = Report.new &HTML_FORMATTER
report.output_report


puts '################# PLAIN TEXT FORMAT ##################'
report = Report.new do |context|
  puts("***** #{context.title} *****")
  context.text.each do |line|
	puts(line)
  end
end

report.output_report