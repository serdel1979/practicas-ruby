
require_relative 'partida'
class Juego
    def initialize()
        p0= Partida.new(0, "hola")
        p1= Partida.new(1, "mundo")
        p2= Partida.new(2, "hoy")
        @array=[p0, p1, p2]
    end
    def array
        @array
    end
    def get_partida
        p= rand(0..2)
    end
end