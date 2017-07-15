require_relative 'composite_statistics'
require_relative 'computer_book_statistics'
require_relative 'medical_book_statistics'

class TechnicalStatistics < CompositeStatistics
  def initialize
    super
    @statistics << ComputerBookStatistics.new
    @statistics << MedicalBookStatistics.new
  end
end
