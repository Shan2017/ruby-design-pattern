require_relative 'state_machine'

m = StateMachine.new
m.state = ClosingState.new
m.open
m.close
m.run
m.stop
