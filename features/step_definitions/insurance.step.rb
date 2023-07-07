# frozen_string_literal: true

Dado('que o usuarios acessou a plataforma de seguros veiculares') do
  VehiclePage.new.load
end

Quando('preenche as informacoes do veiculo') do
  VehiclePage.new.preencher_dados_veiculo
end

E('preenche as informacoes do segurado') do
  InsurantPage.new.preencher_dados_segurado
end

E('preenche as informacoes do produto') do
  ProductPage.new.preencher_dados_produto
end

E('seleciona a precificacao desejada') do
  PricePage.new.selecionar_preco
end

E('preenche o formulario da cotacao') do
  QuotePage.new.preencher_dados_produto
end

Entao('recebe a mensagem de sucesso no envio do e-mail') do
  QuotePage.new.validar_sucesso
end
