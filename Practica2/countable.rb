module Countable
    def contador
        @hash ||= Hash.new(0)
    end 
    def incrementarcontador(a) 
       contador[a] += 1
    end
    module ClassMethods
        def count_invocations_of(sym)
         contador #cant[sym] = 0 #inicializar contador
         alias_method sym, "#{sym}_alias"
         define_method(sym) do
            contador[sym] += 1# contar llamado
            send "#{sym}_alias" # llamar metodo original - public_send() y send()
            end         
        end
    end  
    def invoked?(sym)
        
    end
    def invoked(sym)
    end
    def self.included(base)
        base.extend(ClassMethods)
    end
end


    