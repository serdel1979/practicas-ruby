require 'bundler'
Bundler.require
require_relative 'juego'
require_relative 'partida'
juego= Juego.new
get '/' do
 "#{juego.get_p}"
end
=begin POST / inicia una partida. Internamente tomará una palabra al azar de entre las de
la lista, y luego debe redirigir (con un redirect HTTP) a la URL propia de la partida
(utilizando el identificador de la palabra elegida) para que el jugador pueda
comenzar a adivinar
=end
post '/' do
 p= juego.get_partida.to_s
 redirect to('/p')
end
get '/:a' do
    a= params[:a].to_i
   array= juego.array
   array[a].palabra.to_s
end