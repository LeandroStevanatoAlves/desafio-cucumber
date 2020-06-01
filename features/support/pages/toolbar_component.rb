class Toolbar
    def initialize
        @barra_pesquisa = $driver.find_element(id: 'inpHeaderSearch')
        @botao_pesquisa = $driver.find_element(id: 'btnHeaderSearch')
    end

    def pesquisar(produto)
        @barra_pesquisa.send_keys(produto)
        @botao_pesquisa.click
    end
end