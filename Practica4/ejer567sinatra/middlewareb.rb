=begin 6. Implementá un middleware para Sinatra que modifique la respuesta del web server y
"tache" cualquier número que aparezca en el body de la respuesta, cambiando cada
dígito por un caracter X. Utilizalo en la aplicación anterior para corroborar su
funcionamiento.
=end

class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
    
        status, headers, response = @app.call(env)
        new_response = response[0].gsub(/[0-9]/, 'x')        
        headers['Content-Length'] = new_response.length.to_s
        puts "entro al middleware b"
        [status, headers, [new_response]]
      end    
end