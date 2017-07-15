class Proxy
  def initialize(subject)
    @subject = subject
  end

  def request
    puts 'check'
    @subject.request
  end
end
