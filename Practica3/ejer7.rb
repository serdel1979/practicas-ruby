=begin
Partiendo del script del inciso anterior, implementá una nueva clase de excepción que se
utilizará para indicar que la entrada del usuario no es un valor numérico entero válido.
¿De qué clase de la jerarquía de Exception heredaría?
=end
def numero_valido
    begin
        puts "Ingrese su número de usuario"
        num= gets.to_i
        if num < 1
            raise 
        end
    rescue
        puts "Número de usuario no válido, debe ser mayor que 0"
        retry
    end
end
numero_valido

