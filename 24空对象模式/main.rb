require_relative 'dog'
require_relative 'null_animal'

animals = []
animals << Dog.new
animals << NullAnimal.new
animals << Dog.new

animals.each(&:make_sound)
