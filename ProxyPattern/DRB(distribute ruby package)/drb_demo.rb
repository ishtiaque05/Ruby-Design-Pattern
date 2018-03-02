require 'drb/drb'
DRb.start_service
puts 'Started DRB service'

math_service = DRbObject.new_with_uri("druby://localhost:3030")

puts 'Done fetching a math instance running at localhost:3030'

sum = math_service.add(2,2)

puts "called math_service.add(2,2) : 2 + 2 = #{sum}"