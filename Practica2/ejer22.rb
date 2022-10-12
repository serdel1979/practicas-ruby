=begin
Extendé la clase Array con el método randomly que funcione de la siguiente manera:
Si recibe un bloque, debe invocar ese bloque con cada uno de los elementos del arreglo en orden aleatorio.
Si no recibe un bloque, debe devolver un enumerador que va arrojando, de a uno, los elementos del arreglo en orden aleatorio.
=end
class Array
    def randomly(&block)
        if block == nil
            enum= self.shuffle.each
            p enum
        else
            self.shuffle.each do |x| 
                yield x
            end 
        end
    end
end

array= [1, 2, 3, 4, 5]
#array.randomly { |y| puts y }
array.randomly