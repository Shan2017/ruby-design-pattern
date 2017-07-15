require_relative 'component'
require_relative 'numbering_writer'
require_relative 'time_stamp_writer'

w = TimeStampWriter.new(NumberingWriter.new(Component.new('test.md')))
w.write_line 'hello , decorator design pattern'

w = NumberingWriter.new(TimeStampWriter.new(Component.new('test2.md')))
w.write_line 'hello , decorator design pattern'
