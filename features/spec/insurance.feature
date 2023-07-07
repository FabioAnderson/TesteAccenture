#language: pt

Funcionalidade: Vehicle Insurance Application

Contexto: Acessar o site
Dado que o usuarios acessou a plataforma de seguros veiculares

@cotacao_seguro
Cenario: Cotacao de Seguro
Quando preenche as informacoes do veiculo
E preenche as informacoes do segurado
E preenche as informacoes do produto
E seleciona a precificacao desejada
E preenche o formulario da cotacao
Entao recebe a mensagem de sucesso no envio do e-mail