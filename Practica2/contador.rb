module Contador
    class ContadorClase
        def self.inicializar(a)
            @hash ||= Hash.new(0)
            @hash[a]= 0
            puts @hash
        end
        def self.incrementar(a)
            @hash[a]+= 1
            puts @hash
        end
        def self.cantidad(a)
            @hash[a]
        end
    end
end