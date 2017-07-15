class Tax
  def initialize(mediator)
    @mediator = mediator
  end

  def drop
    puts '- tax'
  end

  def raise
    puts '+ tax'
  end
end
