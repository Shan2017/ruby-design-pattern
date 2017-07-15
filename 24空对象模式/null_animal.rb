require_relative 'animal'

class NullAnimal < Animal
  def make_sound
    puts ''
  end
end
