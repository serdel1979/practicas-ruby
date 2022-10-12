module Opposite
    def opposite
        !self
    end
end
class TrueClass
    include Opposite
end
class FalseClass
    include Opposite
end

puts true.opposite
puts false.opposite.opposite