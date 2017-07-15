require_relative 'product1'
require_relative 'product2'

class Factory
  def create_product(pro)
    eval("#{pro}.new")
  end
end
