class Salary
  def initialize(mediator)
    @mediator = mediator
  end

  def decrease
    @mediator.down_salary
  end

  def increase
    @mediator.up_salary
  end

  def add
    puts '+ Salary'
  end

  def sub
    puts '- Salary'
  end
end
