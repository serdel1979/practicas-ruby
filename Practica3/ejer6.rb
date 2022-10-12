# Este script lee una secuencia de no menos de 15 números desde teclado y luego imprime el resultado de la división
# de cada número por su entero inmediato anterior.
# Como primer paso se pide al usuario que indique la cantidad de números que ingresará.
cantidad = 0
while cantidad < 2
    puts '¿Cuál es la cantidad de números que ingresará? Debe ser al menos 15'
    cantidad = gets.to_i
end
# Luego se almacenan los números
numeros = 1.upto(cantidad).map do
    puts 'Ingrese un número'
    numero = gets.to_i
end
# Y finalmente se imprime cada número dividido por su número entero inmediato anterior
 
resultado = numeros.map do |x| 
    begin 
    x / (x - 1) 
    rescue Exception
        if x == 1 
         x = 1
    end 
    end 
end
puts 'El resultado es: %s' % resultado.join(', ')