class GenericFactory
    def self.create(**args)
        new(**args)
    end
    def initialize(**args)
        raise NoImplementedError
    end
end
class Uno < GenericFactory
    def initialize(**args)
        puts "Uno" 
    end
end
class Dos < GenericFactory
    def initialize(**args)
        puts "Dos"
    end
end
Uno.create
Dos.create