require 'minitest/autorun'
require 'minitest/spec'
require 'ejer1'

describe 'ordenar' do 
    it 'todos los elementos del arreglo son números' do
        array= [1, 4, 6, 2, 3, 0, 10]
        array_resul= [0, 1, 2, 3, 4, 6, 10]
        assert_equal(array_resul, ordenar(array))
    end
end