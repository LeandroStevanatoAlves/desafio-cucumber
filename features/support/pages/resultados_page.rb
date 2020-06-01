class Resultados
    def initialize
        @resultado_pesquisa = $driver.find_element(class: 'nm-product-img-link')
    end

    def seleciona_primeiro_produto
        # Espera o elemento ficar visível, pois o resultado demora um pouco
        $wait.until { @resultado_pesquisa.displayed? }
        @resultado_pesquisa.click
    end
end