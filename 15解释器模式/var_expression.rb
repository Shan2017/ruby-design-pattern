class VarExpression
  def initialize(key)
    @key = key
  end

  def interpreter(hash)
    hash.fetch @key
  end
end
