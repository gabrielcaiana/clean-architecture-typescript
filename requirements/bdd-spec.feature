Feature: Feature name

  Como um cliente online
  Quero que o sistema mostre minhas compras
  Para que eu possa controlar minhas despesas

Scenario: Obter dados da API

  Dado que o cliente tem conexão com a internet
  Quando o cliente solicitar os dados da API para carregar suas compras
  Então o cliente deve receber os dados da API
  E substituir os dados do cache pelos dados da API

Feature: Cliente offline

  Como um cliente offline
  Quero que o sistema salve minhas compras
  Para que eu não perca minhas compras mesmo sem internet

Scenario: Obter dados do cache
  
  Dado que o cliente não tem conexão com a internet
  E existem dados salvos no cache
  Quando o cliente solicitar os dados da API para carregar suas compras
  Então o cliente deve receber os dados do cache
  E substituir os dados da API pelos dados do cache