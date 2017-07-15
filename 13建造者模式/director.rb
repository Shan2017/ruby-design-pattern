require_relative 'builder'
require_relative 'builder2'

class Director
  def initialize
    @b = Builder.new
    @b2 = Builder2.new
  end

  def product
    @b.do_something 'pro1'
    @b.product
  end

  def product2
    @b2.do_something 'pro2'
    @b2.product
  end
end
