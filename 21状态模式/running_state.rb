class RunningState
  attr_accessor :state_machine

  def close; end

  def open; end

  def run
    puts 'run'
  end

  def stop
    @state_machine.state = StateMachine::STOPPING_STATE
    @state_machine.state.stop
  end
end
