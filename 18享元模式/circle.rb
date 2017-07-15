require_relative 'shape'

class Circle < Shape
  attr_accessor :color, :x, :y, :radius
  def draw
    puts 'Circle'
  end
end
