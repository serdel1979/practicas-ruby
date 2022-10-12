module GenericFactory
    module ClassMethods
        def create(**args)
           new(**args)
        end
    end
    #metodos de instancia
    def self.included(base)
        base.extend(ClassMethods)
    end
end

class Uno 
    include GenericFactory
    def initialize(**args)
        puts "Uno"
    end
end
class Dos 
    include GenericFactory
    def initialize(**args)
        puts "Dos"
    end
end

Uno.create
Dos.create

