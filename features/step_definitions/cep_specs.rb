Dado("que executo a API de CEP com o cep {string} válido") do |string|
   @cep = ApiCep.new.busca_cep string
end

Então("a API retorna os dados corretos do endereço") do
    raise "CEP não retornou na pesquisa. Dados do retorno #{@cep}" if @cep['cep'].nil?
    puts @cep['ibge']
end

Dado("que executo a API de CEP com o cep que não existe {string}") do |string|
    @cep = ApiCep.new.busca_cep string
end

Então("a API é executada corretamente mas não retorna dados") do
    raise "CEP existe e retornou na pesquisa. Dados do retorno #{@cep}" unless @cep['cep'].nil?
end

Dado("que executo a API de CEP com o cep inválido {string}") do |string|
    @cep = ApiCep.new.busca_cep string
end

Então("a API não é executada corretamente, reportando erro {int}") do |int|
    raise 'Dados existem e retornaram na pesquisa. Dados do retorno #{@cep}' if @cep.code != int
end
  