# Implementá un método que reciba como parámetros un Hash y Proc , 
#y que devuelva un nuevo Hash cuyas las claves sean los
#valores del Hash recibido como parámetro, y cuyos valores sean el 
#resultado de invocar el Proc con cada clave del Hash original.
def procesar_hash(hash, proc)
   hash= hash.invert
   hash.map do |clave, valor|
    [clave, valor= proc.call(valor)]
   end.to_h
end

hash = { 'clave' => 1, :otra_clave => 'valor' }
proc=Proc.new{|x| x.to_s.upcase }
p procesar_hash(hash, proc)