require_relative 'simple_logger'

s = SimpleLogger.instance
puts s.object_id
s2 = SimpleLogger.instance
puts s2.object_id

s.level = 3
s.info 'info message'
