require_relative 'contador'
module CountableDos
    module ClassMethods
        def contador
            Contador::ContadorClase
        end
        def count_invocations_of(sym)
         contador.inicializar(sym) #inicializar contador
         alias_method "#{sym}_alias", sym
         define_method(sym) do
            contador.incrementar(sym)# contar llamado
            public_send "#{sym}_alias" # llamar metodo original - public_send() y send()
            end         
        end
    end 
    def contador
        Contador::ContadorClase
    end 
    def invoked?(sym)
        if contador.cantidad(sym) > 1
            puts true
        else
            puts false
        end
    end
    def invoked(sym)
        puts contador.cantidad(sym)
    end
    def self.included(base)
        base.extend(ClassMethods)
    end
end


    