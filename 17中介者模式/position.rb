class Position
  def initialize(mediator)
    @mediator = mediator
  end

  def demote
    @mediator.down_position
  end

  def promote
    @mediator.up_position
  end

  def up
    puts '+ Position'
  end

  def down
    puts '- Position'
  end
end
