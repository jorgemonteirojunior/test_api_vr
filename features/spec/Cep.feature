#utf-8
#language: pt


Funcionalidade: API Cep

  @cep @cep01 
  Cenário: Validação de Cep valido
    Dado que executo a API de CEP com o cep '01001000' válido
    Então a API retorna os dados corretos do endereço
  
  @cep @cep02
  Cenário: Validação de Cep inexistente
    Dado que executo a API de CEP com o cep que não existe '12123321'
    Então a API é executada corretamente mas não retorna dados
  
  @cep @cep03
  Cenário: Validação de Cep inexistente
    Dado que executo a API de CEP com o cep inválido 'asdw123'
    Então a API não é executada corretamente, reportando erro 400