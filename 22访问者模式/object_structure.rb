class ObjectStructure
  def initialize
    @collection = []
  end

  def <<(element)
    @collection << element
  end

  def handle_request(visitor)
    @collection.each { |e| e.accept visitor }
  end
end
