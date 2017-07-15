require_relative 'composite_statistics'
require_relative 'technical_statistics'
require_relative 'novel_statistics'

puts TechnicalStatistics.new.browse_count
puts NovelStatistics.new.browse_count

composite_statistics = CompositeStatistics.new
composite_statistics << TechnicalStatistics.new
composite_statistics << NovelStatistics.new
puts composite_statistics.browse_count
