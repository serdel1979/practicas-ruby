class Partida 
    attr_reader :palabra, :id
    attr_accessor :intentos
    def initialize(id, palabra)
        @id= id
        @palabra= palabra
        @intentos= 0
    end
end
