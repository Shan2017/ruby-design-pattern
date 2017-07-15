require_relative 'calculator'

var_hash = {
  'a' => 1,
  'b' => 2,
  'c' => 4
}

cal = Calculator.new 'a+b-c'
puts cal.run var_hash
