class ClosingState
  attr_accessor :state_machine

  def close
    puts 'close'
  end

  def open
    @state_machine.state = StateMachine::OPENNING_STATE
    @state_machine.state.open
  end

  def run
    @state_machine.state = StateMachine::RUNNING_STATE
    @state_machine.state.run
  end

  def stop
    @state_machine.state = StateMachine::STOPPING_STATE
    @state_machine.state.stop
  end
end
