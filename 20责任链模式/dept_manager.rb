require_relative 'handler'

class DeptManager < Handler
  def handle_fee_request(fee)
    if fee < 1000
      puts 'DeptManager agree'
    else
      @successor.handle_fee_request fee if @successor
    end
  end
end
