#Escribí una función llamada a_ul que reciba un Hash y retorne un String con los pares de
#clave/valor del hash formateados en una lista HTML <ul>.
def a_ul(hash)
    string= "<ul>"
    hash.each {|clave, valor| string+= " <li> #{clave}: #{valor} </li>" }
    string= string + " </ul>"
end
puts a_ul({uno: "uno", dos: "dos", tres: "tres"})