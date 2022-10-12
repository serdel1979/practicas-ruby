=begin
Implementá el módulo Reverso para utilizar como Mixin e incluilo en alguna clase para probarlo. 
Reverso debe contener los siguientes métodos:
i. #di_tcejbo : Imprime el object_id del receptor en espejo (en orden inverso).
ii. #ssalc : Imprime el nombre de la clase del receptor en espejo.
=end
module Reverso
    def di_tcejbo
        self.object_id.to_s.reverse.to_i
    end
    def ssalc
        self.class.to_s.reverse
    end
end

class Integer
    include Reverso
end

num= 12323
puts num.object_id, num.di_tcejbo
puts num.class, num.ssalc
