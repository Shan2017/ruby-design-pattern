require_relative 'factory'

class BMWFactory < Factory
  def create_sport
    puts 'create bmw sport'
    p BMWSport.new
  end

  def create_suv
    puts 'create bmw suv'
    p BMWSUV.new
  end
end
