require 'httparty'
require 'json'
class ApiCep
    def busca_cep(cep)
        response = HTTParty.get("https://viacep.com.br/ws/#{cep}/json/",
            :headers => {'Content-Type' =>'application/json'})
        response
    end
end