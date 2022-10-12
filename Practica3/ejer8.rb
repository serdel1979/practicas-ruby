def fun3
    puts "Entrando a fun3"
    raise RuntimeError, "Excepcion intencional"
    puts "Terminando fun3"
rescue NoMethodError => e 
    puts "Tratando excepcion por falta de método"
rescue
    puts "Tratando una excepcion cualquiera"   
rescue RuntimeError=> e 
    puts "Tratando excepcion provocada en el tiempo de ejecucion"
ensure 
    puts "Ejecutando ensure de fun3"
end

def fun2(x)
    puts "Entrando a fun2"
    fun3
    a= 5/x
    puts "Terminando fun2"
end

def fun1(x)
    puts "Entrando a fun1"
    fun2 x
rescue
    puts "Manejador de excepciones de fun1"
    raise
ensure
    puts "Ejecutando ensure de fun1"
end
begin
    begin
        x=0
        fun1 x
    rescue Excepcion => e
        puts "Manejador de excepciones de Main"
        if x == 0
            puts "Correcion de x"
            x=1
            retry
        end
    end
    puts "Salida"
end 