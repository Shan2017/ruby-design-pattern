class StoppingState
  attr_accessor :state_machine

  def close; end

  def open
    @state_machine.state = StateMachine::OPENNING_STATE
    @state_machine.state.open
  end

  def run
    @state_machine.state = StateMachine::RUNNING_STATE
    @state_machine.state.run
  end

  def stop
    puts 'stop'
  end
end
