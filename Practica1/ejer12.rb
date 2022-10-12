#Escribir una función genérica que reciba como parámetro un string y un número n, y que realice una rotación de n lugares 
#de las letras del string y retorne el resultado
$alfabeto_mayusculas = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
$alfabeto_minusculas = "abcdefghijklmnopqrstuvwxyz"
$longitud_alfabeto = 26
$limite_inferior_mayusculas = 65
$limite_inferior_minusculas = 97

=begin
	"Cifrar" y "Descifrar" una cadena con ROT 13, una variante
	del cifrado César. El método funciona tanto para codificar como
	para decodificar.
=end
def rot_n(cadena, number)

	cadena_con_rotaciones = ""
	# Ir letra por letra...
	for letra in cadena.chars
		# Si no es una letra (es un espacio, punto, etcétera) entonces
		# no la rotamos ni cambiamos, ponemos el carácter así como es
		if !letra.match(/^[[:alpha:]]$/)
			cadena_con_rotaciones += letra
			next
		end
		# Suponemos que la letra es mayúscula
		alfabeto = $alfabeto_mayusculas
		limite = $limite_inferior_mayusculas
		# Pero comprobamos y cambiamos si es necesario
		if letra == letra.downcase # ¿Es minúscula?
			alfabeto = $alfabeto_minusculas
			limite = $limite_inferior_minusculas
		end

		valor_ascii = letra.ord
		# Rotar
		nueva_posicion = (valor_ascii - limite + number) % $longitud_alfabeto
		# Y ver cuál carácter está en esa posición
		cadena_con_rotaciones += alfabeto[nueva_posicion]
	end
	# Regresar nueva cadena
	cadena_con_rotaciones
end

mensaje = "¡Bienvenidos a la cursada 2019 de TTPS Opción Ruby!"
puts "El mensaje original es '#{mensaje}'"

mensaje_cifrado = rot_n(mensaje, 1) 
puts "El mensaje cifrado es '#{mensaje_cifrado}'"

mensaje_descifrado = rot_n(mensaje_cifrado, 1)
puts "El mensaje descifrado es '#{mensaje_descifrado}'" 
