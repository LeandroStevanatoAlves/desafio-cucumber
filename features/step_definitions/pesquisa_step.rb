Dado("que pesquiso por {string}") do |produto|
    # Acessa a página inicial
    @home = Homepage.new()
    @home.acessar

    # Realiza a pesquisa
    @toolbar = Toolbar.new()
    @toolbar.pesquisar(produto)
end
  
Quando("seleciono um resultado da pesquisa") do
    @resultados = Resultados.new()

    # Seleciona o primeiro resultado da pesquisa
    @resultados.seleciona_primeiro_produto
end
  
Quando("clico em {string}") do |string|
    @produto = Produto.new()

    # Clica no botão para adicionar no carrinho
    @produto.adicionar_carrinho
end
  
Então("o {string} é adicionado com sucesso no carrinho de compras") do |produto|
    @carrinho = Carrinho.new

    # Verifica se a descrição do produto no carrinho possui o termo que foi utilizado
    expect(@carrinho.verifica_nome.downcase).to include(produto.downcase)
end

Então("recebo a mensagem {string}") do |mensagem|
    @resultados = Resultados_negativo.new()

    # Verifica a mensagem de erro
    expect(@resultados.nao_encontrado).to include(mensagem)
end