class CareTaker
  def initialize
    @list = []
  end

  def get_memento(index)
    @list[index]
  end

  def add_memento(memento)
    @list << memento
  end
end
