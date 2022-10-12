#Escribí una función que encuentre la suma de todos los números naturales múltiplos de
#3 ó 5 menores que un número tope que reciba como parámetro.
def sum (tope)
    enum= (0..tope).select {|v| v % 3 == 0 || v % 5 == 0}
    enum.sum {|v| v }
end
p sum(15)