require_relative 'countableDos.rb'
class Greeter
    include CountableDos

    def hi 
        puts 'Hey!'
    end

    def bye
        puts 'See you!'
    end 
    count_invocations_of :hi
end

a= Greeter.new
b= Greeter.new
a.invoked? :hi
b.invoked? :hi
a.hi
a.hi
b.hi
a.invoked? :hi
b.invoked? :hi
a.invoked :hi
b.invoked :hi