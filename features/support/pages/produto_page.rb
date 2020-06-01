class Produto
    def initialize
        @botao_adicionar = $driver.find_element(class: 'button__buy')
    end
    
    def adicionar_carrinho
        @botao_adicionar.click
    end
end