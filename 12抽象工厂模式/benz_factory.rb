require_relative 'factory'

class BenzFactory < Factory
  def create_sport
    puts 'create benz sport'
    p BenzSport.new
  end

  def create_suv
    puts 'create benz suv'
    p BenzSUV.new
  end
end
