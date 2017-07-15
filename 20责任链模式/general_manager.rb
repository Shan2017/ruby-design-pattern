require_relative 'handler'

class GeneralManager < Handler
  def handle_fee_request(fee)
    if fee >= 1000
      puts 'GeneralManager agree'
    else
      @successor.handle_fee_request fee if @successor
    end
  end
end
