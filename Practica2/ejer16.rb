#16. Escribí un método da_nil? que reciba un bloque, lo invoque y retorne si el valor de 
#retorno del bloque fue nil .
def da_nil?
   p yield == nil
end


da_nil?{ }
da_nil? do
   'Algo distinto de nil'
end