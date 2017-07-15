require_relative 'decorator'

class TimeStampWriter < Decorator
  def write_line(line)
    @real_writer.write_line "#{Time.now}: #{line}"
  end
end
