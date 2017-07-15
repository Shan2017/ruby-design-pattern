class FilmStar
  def initialize(action)
    @action = action
  end

  def do
    puts 'i am a film star'
    @action.desc
  end
end
