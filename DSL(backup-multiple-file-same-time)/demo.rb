require './require_all'

Backup.new do |b|
  b.backup '/home/g2/projects/ruby/Ruby-Design-Pattern/ProxyPattern/refined-proxy-pattern-ruby-way', Not.new('*md')
  b.to './tmp/backup'
  b.interval 60
  puts "Backup done"
end