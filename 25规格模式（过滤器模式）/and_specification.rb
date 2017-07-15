require_relative 'composite_specification'

class AndSpecification # < CompositeSpecification
  def initialize(one, other)
    @one = one
    @other = other
  end

  def filter(list)
    @one.filter(list) - (@one.filter(list) - @other.filter(list))
  end
end
