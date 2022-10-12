require 'rubygems'
require 'thin'

class Mol
    def call(env)
        num= rand(1..42)
        if num == 42 
            [200, {"Content-Type" => "text/html"}, ["es 42"]]
        else
            [404, {"Content-Type" => "text/html"}, ["distinto a 42"]]
        end
    end
end

Rack::Handler::Thin.run(Mol.new, :Port => 9000)