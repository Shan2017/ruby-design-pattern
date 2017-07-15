require_relative 'act_film'
require_relative 'sing'
require_relative 'film_star'
require_relative 'singer'

act = Sing.new
# act = ActFilm.new

a = FilmStar.new act
a.do

b = Singer.new act
b.do
