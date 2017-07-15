require_relative 'composite_specification'

class FemaleSpecification < CompositeSpecification
  def filter(list)
    result = []
    list.each do |p|
      result << p if p.gender == :female
    end
    result
  end
end
