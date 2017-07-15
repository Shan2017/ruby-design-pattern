require_relative 'position'
require_relative 'salary'
require_relative 'tax'

class Mediator
  def up_salary
    salary.add
    tax.raise
  end

  def up_tax
    tax.raise
  end

  def up_position
    salary.add
    tax.raise
    position.up
  end

  def down_salary
    salary.sub
    tax.drop
  end

  def down_tax
    tax.drop
  end

  def down_position
    salary.sub
    tax.drop
    position.down
  end

  private

  def salary
    @salary ||= Salary.new self
  end

  def position
    @position ||= Position.new self
  end

  def tax
    @tax ||= Tax.new self
  end
end
