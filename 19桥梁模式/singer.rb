class Singer
  def initialize(action)
    @action = action
  end

  def do
    puts "i'm a singer"
    @action.desc
  end
end
