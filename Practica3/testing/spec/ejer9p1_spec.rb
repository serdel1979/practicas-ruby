require 'minitest/autorun'
require 'minitest/spec'
require 'ejer9'

describe '#longitud' do
    it 'los elementos del arreglo son string' do
        array= ['TTPS', 'Opción', 'Ruby', 'Cursada 2019'] 
        array_resul= [4, 6, 4, 12]
        assert_equal(array_resul, longitud(array))
    end
    it 'algún elemento no es un string' do
        array= [2, "hola"] 
        assert_raises(NoMethodError) do
            longitud(array)
        end
    end
    it 'si lo envio sin parametro' do
        assert_raises(ArgumentError) do
          longitud
        end
    end 
end