require_relative 'mediator'

m = Mediator.new

s = Salary.new m
s.increase
s.decrease
puts

t = Tax.new m
t.drop
t.raise
puts

p = Position.new m
p.promote
p.demote
