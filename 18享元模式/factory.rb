require_relative 'circle'

class Factory
  def initialize
    @hash = {}
  end

  def circle(color)
    if circle = @hash[color]
      circle
    else
      c = Circle.new
      c.color = color
      @hash[color] = c
    end
  end
end
