require './all'
require './filename'
require './not'
require './bigger'
require './or'

expr_all = All.new
files = expr_all.evaluate('/home/g2/projects/ruby/Ruby-Design-Pattern')
# puts files

expr_mdfile = FileName.new('*.md')
files = expr_mdfile.evaluate('/home/g2/projects/ruby/Ruby-Design-Pattern')
puts files

puts 'Not writable file demo'


expr_not_writable = Not.new(Writable.new)
readonly_files = expr_not_writable.evaluate('/home/g2/projects/ruby/Ruby-Design-Pattern')

puts 'OR demo'

big_or_not_md_expr = Or.new(Bigger.new(1024), FileName.new('*.md'))
big_or_md = big_or_not_md_expr.evaluate('/home/g2/projects/ruby/Ruby-Design-Pattern')

puts 'making complex expression'

complex_expression = And.new(And.new(Bigger.new(1024), FileName.new('.mp3')), Not.new(Writable.new) )

complex_expression.evaluate('/home/g2')

puts "shortcut keys | & used to make expression"

(Bigger.new(60) & Not.new(Writable.new)) | FileName.new('*.mp3')

puts "even more shorter syntax demo"
(bigger(2000) & except(writable)) | file_name('*.mp3')