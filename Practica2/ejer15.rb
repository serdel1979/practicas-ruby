VALUE = 'global'
module A
   VALUE = 'A'
   #inicio clase B
   class B
      VALUE = 'B'
      def self.value
       VALUE
      end
      def value
       'iB'
      end
   end
   #fin clase B
   def self.value
     VALUE
   end
end

class C
   class D
    VALUE = 'D'
    def self.value
      VALUE
    end
   end
   #fin clase D
   module E
     def self.value
       VALUE
     end
   end
   #fin modulo E
   def self.value
     VALUE
    end
end
#fin clase C

class F < C
   VALUE = 'F'
end
puts A.value
puts A::B.value
puts C::D.value

puts C::E.value
puts F.value
puts A::value
# error -> no se puede hacer una instancia de un modulo --->puts A.new.value
# B es una clase dentro de un modulo --> error--->puts B.value 
puts C.value
puts F.superclass.value


