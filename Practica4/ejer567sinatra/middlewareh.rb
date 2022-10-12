=begin 6. Implementá un middleware para Sinatra que modifique la respuesta del web server y
"tache" cualquier número que aparezca en el body de la respuesta, cambiando cada
dígito por un caracter X. Utilizalo en la aplicación anterior para corroborar su
funcionamiento.
=end

class MiddlewareH
    def initialize(app)
      @app = app
    end

    def call(env)
      
        status, headers, response = @app.call(env)
        cant=0
        response.to_s.each_char do |p| 
             if p == "m"
                cant +=1                  
            end
        end
        headers['X-Xs-Count'] = cant
        puts "entro al middleware h"
        [status, headers, response]
      end    
end