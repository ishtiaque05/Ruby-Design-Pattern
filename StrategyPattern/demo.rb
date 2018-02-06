require './html_formatter'
require './report'
require './plain_text_formatter'
report = Report.new(HTMLFormatter.new)
report.output_report

puts 
puts "############## Switching strategies ##############"

report.formatter = PlainTextFormatter.new
report.output_report