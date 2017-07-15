require_relative 'benz_sport'
require_relative 'benz_suv'
require_relative 'bmw_sport'
require_relative 'bmw_suv'

class Factory
  def create_sport
    raise 'error'
  end

  def create_suv
    raise 'error'
  end
end
