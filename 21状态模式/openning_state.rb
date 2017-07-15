class OpenningState
  attr_accessor :state_machine

  def close
    @state_machine.state = StateMachine::CLOSING_STATE
    @state_machine.state.close
  end

  def open
    puts 'open'
  end

  def run; end

  def stop; end
end
