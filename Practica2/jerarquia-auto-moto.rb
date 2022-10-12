=begin
Modelá con una jerarquía de clases algo sencillo que represente la siguiente situación: 
Tres tipos de vehículo: Auto , Moto y Lancha. Los tres tipos arrancan usando una llave.
El auto, adicionalmente, requiere que no esté puesto el freno de mano y que el cambio esté en punto 
muerto. 
La moto, por otra parte, requiere una patada (sin la llave).
La lancha arranca con la llave y listo.
El arranque de los tres vehículos se prueba en un taller. La especificación de Taller es la siguiente: 
class Taller
 def probar(objeto)
   objeto.arrancar
 end
end
=end
class Vehiculo
    attr_accessor :llave
    def arrancar
        @llave= true
    end
end
class Auto < Vehiculo
    attr_accessor :freno_mano, :cambio
    def arrancar
        super
        @freno_mano=false
        @cambio="punto muerto"
    end
end
class Moto < Vehiculo
    attr_accessor :patada
    def arrancar
        @llave= false
        @patada= true
    end
end
class Lancha < Vehiculo
end

v= Lancha.new
v.arrancar
