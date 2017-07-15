require_relative 'handler'

class ProjectManager < Handler
  def handle_fee_request(fee)
    if fee < 500
      puts 'ProjectManager agree'
    else
      @successor.handle_fee_request fee if @successor
    end
  end
end
