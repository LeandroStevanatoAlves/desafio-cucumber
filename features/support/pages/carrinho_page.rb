class Carrinho
    def initialize
        @produto_nome = $driver.find_element(class: 'header-tip__product-txt')
    end

    def verifica_nome
        # Retorna a descrição do produto
        return @produto_nome.text
    end
end