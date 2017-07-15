require_relative 'statistics'

class CompositeStatistics < Statistics
  def initialize
    @statistics = []
  end

  def <<(component)
    @statistics << component
  end

  def delete(component)
    @statistics.delete(component)
  end

  def browse_count
    browse_count = 0
    @statistics.each do |s|
      browse_count += s.browse_count
    end
    browse_count
  end

  def sale_count
    sale_count = 0
    @statistics.each do |s|
      sale_count += s.sale_count
    end
    sale_count
  end
end
