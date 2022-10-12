=begin
Modificá la función anterior para que sólo considere como aparición del segundo string
cuando se trate de palabras completas. Por ejemplo: 
contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")
# => 4
=end
def contar(string1, string2)
    hash= Hash.new(0)
    array= string1.downcase.scan(/\w+/)
    array.each{ |elem| hash[elem]+=1 }
    hash["#{string2}"]
end

p contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")