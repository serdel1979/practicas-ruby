=begin
Dado un color expresado en notación RGB , debés calcular su representación entera y hexadecimal,
donde la notación entera se define como red+green*256 + blue*256*256 y la hexadecimal como el resultado 
de expresar en hexadecimal el valor de cada color y concatenarlos en orden. Por ejemplo:
notacion_hexadecimal([0, 128, 255])
# => '#0080FF'
notacion_entera([0, 128, 255])
# => 16744448
=end
def notacion_hexadecimal(array)
    hexadecimal = "#"   
    array.each {|elem| hexadecimal+= elem.to_s(16) }
    puts "hexadecimal #{hexadecimal}"
    
end 
def notacion_entera(array)
    entera = array[0] + (array[1]*256) + (array[2]*256*256)
    puts "entera #{entera}"
end
notacion_hexadecimal([0, 128, 255])
notacion_entera([0, 128, 255])