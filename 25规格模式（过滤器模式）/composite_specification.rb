require_relative 'and_specification'
require_relative 'or_specification'
require_relative 'not_specification'

class CompositeSpecification
  def filter(_list)
    raise 'can not call abstract method filter'
  end

  def and(spec)
    AndSpecification.new(self, spec)
  end

  def or(spec)
    OrSpecification.new(self, spec)
  end

  def not(_spec)
    NotSpecification.new self
  end
end
