require_relative 'composite_specification'

class OrSpecification # < CompositeSpecification
  def initialize(one, other)
    @one = one
    @other = other
  end

  def filter(list)
    (@one.filter(list) + @other.filter(list)).uniq
  end
end
