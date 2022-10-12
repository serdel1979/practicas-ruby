#Modificá el método anterior para que en lugar de recibir un arreglo como único parámetro, reciba todos los números como
#parámetros separados
def ordenar (*args)
  args.sort
end
 p ordenar 1, 4, 6, 2, 3, 0, 10