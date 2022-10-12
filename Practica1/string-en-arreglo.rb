#Escribí una función que dado un arreglo que contenga varios string cualesquiera,
#retorne un nuevo arreglo donde cada elemento es la longitud del string que se
#encuentra en la misma posición del arreglo recibido como parámetro.
def longitud(array)
    array.map{ |element| element.length }
end
