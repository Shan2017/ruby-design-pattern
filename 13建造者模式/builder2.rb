require_relative 'product'

class Builder2
  attr_reader :product
  def initialize
    @product = Product.new
  end

  def do_something(attr)
    @product.attr = attr.reverse
  end
end
