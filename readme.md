## Sobre o projeto
Projeto que automatiza cenários de testes para o desafio proposto, foi criado com Ruby, Cucumber, e Selenium webdriver.
Optei por automatizar o site do Magazine Luiza, pois outras lojas grandes geralmente sempre trazem algum resultado na pesquisa, mesmo quando pesquiso por algo que não existe, e com isso não teria um cenário negativo de teste.

## Guia de instalação local
1. Faça o clone deste projeto com `git clone https://github.com/LeandroStevanatoAlves/desafio-cucumber.git`
2. Instale o **Ruby**, se estiver usando o Windows utilize o [RubyInstaller](https://rubyinstaller.org/downloads/), se estiver utilizando outro sistema operacional procure seguir as instruções [desta página](https://www.ruby-lang.org/pt/documentation/installation/)
3. Instale o **Bundler** com `gem install bundler`
4. Entre na pasta do projeto e instale as dependências com `bundle install`
5. Execute os testes com `cucumber`
6. Um relatório de execução em HTML com o nome de **relatorio.html** será criado na pasta **logs**, se o relatório já existir ele será sobreescrito.

## Guia de instalação com Docker
1. Faça o clone deste projeto com `git clone https://github.com/LeandroStevanatoAlves/desafio-cucumber.git`
2. Instale o **Docker**
3. Crie a imagem do docker a partir do dockerfile usando o comando `docker build -t cucumber:1.0 .`
4. Execute os testes com `docker run -v C:\dev\projeto:/cucumber cucumber:1.0 cucumber ambiente=docker`, mas substitua o **C:\dev\projeto** pela pasta onde o projeto foi clonado.
5. Um relatório de execução em HTML com o nome de **relatorio.html** será criado na pasta **logs**, se o relatório já existir ele será sobreescrito.

## Relatório de execução
A cada execução, um relatório de execução em HTML com o nome de `relatorio.html` será criado na pasta do projeto, se o relatório já existir ele será sobreescrito.

## Observações
Procurei usar palavras mais genéricas na pesquisa ao invés de procurar um produto em específico, minha preocupação foi que a descrição no site mudasse e com isso quebraria o teste.
Num projeto real eu procuraria ser mais específico, e com isso poderia fazer validações mais elaboradas.