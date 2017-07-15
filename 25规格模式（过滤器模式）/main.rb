require_relative 'person'
require_relative 'and_specification'
require_relative 'or_specification'
require_relative 'not_specification'
require_relative 'age_greater_than_20_specification'
require_relative 'female_specification'
require 'pp'

list = []
list << Person.new(22, 'one', :male)
list << Person.new(21, 'two', :female)
list << Person.new(23, 'three', :male)
list << Person.new(12, 'four', :female)
list << Person.new(1, 'five', :male)

female_filter = FemaleSpecification.new
pp female_filter.filter list
puts

age_greater_than_20_filter = AgeGreaterThan20Specification.new
pp age_greater_than_20_filter.filter list
puts

f = OrSpecification.new age_greater_than_20_filter, female_filter
pp f.filter list
puts

pp age_greater_than_20_filter.or(female_filter).filter list
puts

and_filter = AndSpecification.new female_filter, age_greater_than_20_filter
pp and_filter.filter list
puts

pp age_greater_than_20_filter.and(female_filter).filter list
