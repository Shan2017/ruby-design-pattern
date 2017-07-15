require_relative 'composite_specification'

class AgeGreaterThan20Specification < CompositeSpecification
  def filter(list)
    result = []
    list.each do |p|
      result << p if p.age > 20
    end
    result
  end
end
