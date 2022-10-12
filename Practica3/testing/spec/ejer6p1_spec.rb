require 'minitest/autorun'
require 'minitest/spec'
require 'ejer6'


describe '#contar' do
    it 'cuando no hay ninguna ocurrencia' do
        s1= "La casa de la esquina tiene la puerta roja y la ventana blanca."
        s2= "perro"
        assert_equal(0, contar(s1,s2))
    end
    it 'cuando hay alguna ocurrencia' do
        s1= "La casa de la esquina tiene la puerta roja y la ventana blanca."
        s2= "de"
        assert_equal(1, contar(s1,s2))
    end 
end