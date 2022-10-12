require 'bundler'
Bundler.require
require_relative 'middlewareh'
require_relative 'middlewareb'
use MiddlewareH
use Middleware

get '/' do
    "/mcm/:a/:b
     /mcd/:a/:b
     /sum/*
     /even/*
     /random
     /random/:lower/:upper"
end
#GET /mcm/:a/:b calcula y presenta el mínimo común múltiplo de los valores numéricos :a y :b
get '/mcm/:a/:b' do
    a= params[:a].to_i
    b= params[:b].to_i
    "EL minimo comun multiplo es:#{a.lcm(b)}"
end
#GET /mcd/:a/:b calcula y presenta el máximo común divisor de los valores numéricos :a y :b
get '/mcd/:a/:b' do
    a= params[:a].to_i
    b= params[:b].to_i
    "El maximo comun divisor es:#{a.gcd(b)}"
end
#GET /sum/* calcula la sumatoria de todos los valores numéricos recibidos como parámetro en el splat
get '/sum/*' do
    sum=0
    params['splat'][0].each_char{|char| sum += char.to_i}
    "La sumatoria es:#{sum}"
end
#GET /even/* presenta la cantidad de números pares que hay entre los valores numéricos recibidos como parámetro en el splat
get  '/even/*' do
    sum=0
    params['splat'][0].each_char do |char|
        if char.to_i.even?
            sum +=1
        end
    end
    "La cantidad de numeros pares es:#{sum}"
end
#POST /random presenta un número al azar
post '/random' do
    "Numero aleatorio: " + rand().to_s
end
#POST /random/:lower/:upper presenta un número al azar entre :lower y :upper (dos valores numéricos)
post '/random/:lower/:upper' do
    l= params[:lower].to_i
    u= params[:upper].to_i
    "Numero aleatorio: " + rand(l..u).to_s
end