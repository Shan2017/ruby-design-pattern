require_relative 'factory'

f = Factory.new
c = f.circle 'red'
p c

c = f.circle 'black'
p c

c = f.circle 'red'
p c

c = f.circle 'red'
p c
