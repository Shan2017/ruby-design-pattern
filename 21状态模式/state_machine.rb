require_relative 'openning_state'
require_relative 'running_state'
require_relative 'stopping_state'
require_relative 'closing_state'

class StateMachine
  OPENNING_STATE = OpenningState.new
  RUNNING_STATE = RunningState.new
  STOPPING_STATE = StoppingState.new
  CLOSING_STATE = ClosingState.new

  attr_accessor :state

  def state=(new_state)
    @state = new_state
    @state.state_machine = self
  end

  def open
    @state.open
  end

  def close
    @state.close
  end

  def run
    @state.run
  end

  def stop
    @state.stop
  end
end
