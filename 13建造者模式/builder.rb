require_relative 'product'

class Builder
  attr_reader :product
  def initialize
    @product = Product.new
  end

  def do_something(attr)
    @product.attr = attr
  end
end
