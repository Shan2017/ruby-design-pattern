require_relative 'command'

class Invoker
  attr_accessor :cmd
  def initialize(cmd)
    @cmd = cmd
  end

  def ok
    @cmd.execute
  end
end
