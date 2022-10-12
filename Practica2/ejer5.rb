=begin
Implementá el método cuanto_falta? que opcionalmente reciba como parámetro un objeto Time y que calcule 
la cantidad deminutos que faltan para ese momento. Si el parámetro de fecha no es provisto, asumí que la
consulta es para la medianoche de hoy.
Por ejemplo: cuanto_falta? Time.new(2017, 12, 31, 23, 59, 59)
Debe retornar la cantidad de minutos que faltan para las 23:59:59 del 31/12/2017
cuanto_falta?
 Debe retornar la cantidad de minutos que faltan para la medianoche de hoy
=end
require 'date'
 def cuanto_falta?(*time)
    now= Time.new
    if time.length == 0
        date=  Date.today + 1
        year= date.year
        month= date.month
        day= date.day
        medianoche=Time.new(year, month, day)
        puts (medianoche - now).div 60 
    else 
        puts (time[0] - now).div 60
    end
end
cuanto_falta? Time.new(2019, 10, 26, 14, 36, 00)
cuanto_falta?