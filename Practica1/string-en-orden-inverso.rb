=begin
Dada una cadena cualquiera, y utilizando los métodos que provee la clase String, realizá
las siguientes operaciones sobre el string:
Imprimilo con sus caracteres en orden inverso.
=end
puts "La casa de la esquina".reverse
#Eliminá los espacios en blanco que contenga.
puts "La casa de la esquina".delete " "
#Convertí cada uno de sus caracteres por su correspondiente valor ASCII.
puts "La casa de la esquina".bytes.join(" ")
#Cambiá las vocales por números
#puts "La casa de la esquina tiene perros".gsub('a', '1').gsub('e', '2').gsub('i', '3').gsub('o', '4').gsub('u', '5')
vocales= {'a'=> 1, 'e'=> '2', 'i'=>'3', 'o'=>'4', 'u'=>'5'}
puts "La casa de la esquina tiene perros".gsub(/[aeiou]/, vocales)