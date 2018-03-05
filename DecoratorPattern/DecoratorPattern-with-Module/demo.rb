require './simple_writer'
require './NumberingWriter'
require './TimeStampingWriter'

w = SimpleWriter.new('out')
w.extend(NumberingWriter)
w.extend(TimeStampingWriter)

w.write_line('hello')