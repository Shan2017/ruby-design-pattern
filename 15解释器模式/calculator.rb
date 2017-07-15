require_relative 'var_expression'
require_relative 'add_expression'
require_relative 'sub_expression'

class Calculator
  def initialize(exp_str)
    stack = []
    size = 0

    while size < exp_str.size
      byte = exp_str[size]

      if byte == '+'
        left = stack.pop
        size += 1
        right = VarExpression.new(exp_str[size])
        stack << AddExpression.new(left, right)
      elsif byte == '-'
        left = stack.pop
        size += 1
        right = VarExpression.new(exp_str[size])
        stack << SubExpression.new(left, right)
      else
        stack << VarExpression.new(byte)
      end
      size += 1
    end
    @expression = stack.pop
  end

  def run(hash)
    @expression.interpreter hash
  end
end
