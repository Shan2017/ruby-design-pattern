require_relative 'subject'
require_relative 'observer1'
require_relative 'observer2'

s = Subject.new
o1 = Observer1.new
o2 = Observer2.new

s.add_observer o1
s.add_observer o2

s.name = 'me'

s.name = 'you'
