class SubExpression
  def initialize(left, right)
    @left = left
    @right = right
  end

  def interpreter(hash)
    @left.interpreter(hash) - @right.interpreter(hash)
  end
end
