require_relative 'composite_specification'

class NotSpecification # < CompositeSpecification
  def initialize(spec)
    @spec = spec
  end

  def filter(list)
    list - @spec.filter(list)
  end
end
