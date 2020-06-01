class Resultados_negativo
    def initialize
        @nao_encontrado_texto = $driver.find_element(class: 'nm-not-found-message1')
    end

    def nao_encontrado
        return @nao_encontrado_texto.text
    end
end