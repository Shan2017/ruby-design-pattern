require_relative 'memento'
require_relative 'originator'
require_relative 'care_taker'

originator = Originator.new
care_taker = CareTaker.new

originator.state = '1'
originator.state = '2'
memento = originator.save
care_taker.add_memento memento

originator.state = '3'
memento = originator.save
care_taker.add_memento memento

originator.state = '4'
memento = originator.save
care_taker.add_memento memento

puts 'current state:' + originator.state
originator.restore care_taker.get_memento(0)
puts 'first state:' + originator.state
originator.restore care_taker.get_memento(1)
puts 'second state:' + originator.state
