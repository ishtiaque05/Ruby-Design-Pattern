require './report'
require './html_report'
require './plain_text_report'

puts '#################### HTML REPORT #######################'
report = HTMLReport.new
report.output_report

puts

puts '#################### PLAIN TEXT REPORT #######################'
report = PlainTextReport.new
report.output_report