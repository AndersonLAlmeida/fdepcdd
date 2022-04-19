# Material produzido pelo professor Filipe Zabala em seu curso para iniciantes
#no R: https://www.youtube.com/watch?v=0ZF_EJFQW2A&list=PLgnUrXr7_7coSfm067nFXPvShO18o6GQ_&index=4

################################################
###    Ciência de dados em software livre    ###
###         http://filipezabala.com          ###
###  https://github.com/filipezabala/cddesl  ###
###            Início: 2020-10-11            ###
###      Última atualização: 2021-06-28      ###
################################################

# Playlist
# https://www.youtube.com/playlist?list=PLgnUrXr7_7coSfm067nFXPvShO18o6GQ_

### Textos
# https://cran.r-project.org/doc/manuals/r-release/R-intro.pdf
# http://r4ds.had.co.nz/
# https://www.curso-r.com/
# https://www.ufrgs.br/wiki-r
# http://www.burns-stat.com/pages/Tutor/R_inferno.pdf
# https://www.amazon.com/ggplot2-Elegant-Graphics-Data-Analysis/dp/331924275X/

### Formulários e resumos
# https://www.rstudio.com/resources/cheatsheets/ --> Cheat Sheets do R
# https://www.causascientia.org/math_stat/Dists/Compendium.pdf

### Gráficos
# https://plot.ly/r/
# https://www.r-graph-gallery.com/
# https://github.com/d3/d3/wiki/Gallery
# http://kateto.net/network-visualization
# https://www.shinyapps.org/apps/RGraphCompendium/index.php
# http://r-statistics.co/Top50-Ggplot2-Visualizations-MasterList-R-Code.html

### Links para a instalação do R e RStudio
# https://cloud.r-project.org/
# https://www.rstudio.com/products/rstudio/download/preview/

### (R) tools
# https://cran.r-project.org/bin/windows/Rtools/
# https://cran.r-project.org/bin/macosx/tools/

### Tópicos
#  0 A primeira seção de R e RStudio
#  1 Funções básicas do R e RStudio  <-- 
#  2 Objetos e funções úteis
#  3 Criando e manipulando funções
#  4 Manipulando dados com dplyr and tidyr (tidyverse)
#  5 Estatística	descritiva, visualização e séries temporais
#  6 Probabilidade
#  7 Cadeias de Markov
#  8 Simulação
#  9 Inferência
# 10 Tópicos em Modelos Lineares Generalizados
# 11 Aprendizado de máquina



########################################
### 1 Funções básicas do R e RStudio ###
########################################

# Comentar/descomentar
# Ctrl+Shift+C


# Instalando os pacotes necessários (rodar uma vez)
# No terminal, sudo rstudio
packs <- c('pracma','rgl','car','tidyverse')
install.packages(packs, dep = T) # dep=T identifica e instala as dependências
update.packages(ask = F) # Atualiza os pacotes


# Instalando e atualizando pacotes (rodar uma vez)
library(MASS)         # Para a função fractions()
library(pracma)       # nthroot(x,n)
library(car)          # recode()
library(rgl)          # demo(rgl)

# Demonstração de algumas funcionalidades
demo()              # Lista todos as demonstrações disponíveis, mesmo em pacotes não carregados
demo(persp)         # Gráficos 3D
demo(rgl)           # Gráficos 3D avançados
demo(colors)        # Cores por nome
demo(Hershey)       # Tabelas de caracteres
demo(plotmath)      # Notação matemática

# Detalhes da distribuição
licence()
RShowDoc('COPYING') # GNU Version 2, June 1991
RShowDoc('GPL-3')   # GNU Version 3, June 2007

# Contribuidores
contributors()

# Citação
citation()        # R
citation('car')   # pacotes

# Ajuda e documentação
help()              # Ajuda
help.start()        # Ajuda em html
help(mean)          # Chama a ajuda para a função 'mean'
?mean               # Equivalente a 'help(mean)'
help.search('mean') # Busca por tópicos contendo 'mean'
??mean              # Equivalente a 'help.search('mean')'
example(mean)       # Roda os exemplos da documentação de 'mean'
apropos('mean')     # Encontra funções que contenham parte do nome 'mean'

## Comandos básicos ##

# Operações
2+5             # Adição
sum(2,5)        # Adição através da função 'sum'
2-5             # Subtração
2*5             # Multiplicação
2/5             # Divisão
2^5             # Potenciação
2**5            # Equivale a 2^5, utilizada em Python
sqrt(16)        # Raiz quadrada
sqrt(-17+0i)    # Raiz quadrada para os Complexos
pracma::nthroot(16,2)   # {pracma} Raiz n-ésima (n=2) ex: √16
pracma::nthroot(16,4)   # {pracma} Raiz n-ésima (n=4) ex: 4√16
16^(1/4)        # podemos usar esta forma ex: 4√16

# Prioridade das operações (calcule mentalmente antes de rodar)
1+2*5 
(1+2)*5
1/2*5^3 # É possível usar fractions(1/2*5^3)
1/(2*5)^3

# Sequências regulares (*importante*)
1:100 # Equivalente a seq(1, 100, by = 1)
seq(1, 100, by = 1) # Vetor de 1 a 100 com valores variando de 1 em 1
seq(1, 100, by = 2) # Vetor de 1 a 100 com valores variando de 2 em 2, somente números ímpares
100:1
-100:1
-(100:1)

# Outras aplicações de seq
seq(1, 100, length.out = 3) #lenght.out específica a quantidade de elementos do vetor
seq(stats::rnorm(20)) # effectively 'along'

# Repetion (*importante*)
rep(1:4, times = 2)         # repete a sequência 1:4 duas vezes
rep(1:4, length.out = 10)   # limita o numero de observacoes
rep(1:4, each = 2)          # repete cada elemento duas vezes  --> 1 1 2 2 3 3 4 4
rep(1:4, each = 2, length.out = 4) # repete cada elemente duas vezes e limita a 4 elementos no vetor

# Atribuições
x <- 2
(3 -> z)
y = 4
4 = y
x*y+z

# Funções matemáticas
pi
cos(c(0,30,45,60)*pi/180)
MASS::fractions(cos(c(0,30,45,60)*pi/180))


# Looping

# for
for(i in 1:10) print(i)
for(i in seq(1,10,2)) print(i) #seq(from,to,by)

# celsius para farenheit
for(celsius in 20:30){
  print( c(celsius, round(1.8*celsius+32, 1)) )
}

# while
x <- 0
while(x < 5) {x <- x+1; print(x)}

x <- 0
while(x < 5) {x <- x+1; if (x == 3) break; print(x)}  # pára quando x == 3

x <- 0
while(x < 5) {x <- x+1; if (x == 3) next; print(x)}   #  omite x == 3

# Recursos da linguagem para loopings
break
next

# Arredondamento
round(153.456789,3) # Arredonda para 3 decimais
for(i in 6:-2){print(round(153.456789,i))}
options(digits = 9) # Ajusta apresentação para 9 dígitos (padrão é 7)
for(i in 6:-2){print(round(153.456789,i))}

# sprintf da linguagem C
sprintf('%f', pi)
sprintf('%.3f', pi)
sprintf('%.200f', pi)
sprintf('%.5f', pi)
sprintf('%1.0f', pi)
sprintf('%5.1f', pi)
sprintf('%05.1f', pi)
sprintf('%+f', pi)
sprintf('% f', pi)
sprintf('%-10f', pi) # left justified
sprintf('%e', pi) # Exibe pi com exponencial
sprintf('%e', 1000000) # Exibe 1 milhão com exponencial
sprintf('%.3e', pi)
sprintf('%.3e', 1000000) # Exibe 1 milhão com exponencial com três casas depois da vírgula
sprintf('%E', pi)
sprintf('%g', pi)
sprintf('%g',   1e6 * pi) # -> exponential
sprintf('%.9g', 1e6 * pi) # -> 'fixed'
sprintf('%G', 1e-6 * pi)

# Valores lógicos
2 < 5            # TRUE ou T
2 > 5            # FALSE ou F
1 == 1           # Igualdade simbolizada por ==
1 != 1           # Diferença simbolizada por !=
(1==1) & (1==2)  # Intersecção/E simbolizado por & ou &&
(1==1) | (1==2)  # União/OU simbolizado por |
!(1==1)          # Negação simbolizada por !
as.numeric(c(T,F,F,T,T,T,T,F,T))  # conversão para numérico (binário)
sum(c(T,F,F,T,T,T,T,F,T)) # COmo T = 1, retorna a soma de T, ou seja, 6
?base::Logic  # ajuda de 'Logical Operators'

# Complemento de valores lógicos
10*T # R: 10
10*F # R: 0


# Valores faltantes (NA/missing values)
(z1 <- c(1:3, NA))    # NA é um símbolo especial
(z2 <- c(1:3, NB))    # erro, pois 'NB' não é símbolo especial
(z2 <- c(1:3, "NB")) # Automaticamente transforma o vetor em vetor de strings 
sum(is.na(z1)) # Soma a quantidade de NAs de um vetor
mean(z1) # Por conter um NA no vetor, retorna mean = NA
mean(z1, na.rm = T) # na.rm = T remove os NAs e executa a média dos valores diferentes de NA


# Diretório de trabalho (working directory)
getwd()        # Apresenta o diretório corrente
setwd('~/')   # Ajusta o diretório corrente
setwd('C:/Users/ander/dev/fdepcdd')
dir()          # Apresenta o conteúdo do diretório corrente

(x <- 1:10)
rev(x)          # inverte o vetor
cumsum(x)       # soma acumulada
cumsum(rev(x))  # soma acumulada inversa
# cumsum auxilia na construção de tabelas de Distribuição de Frequências

(x <- c(3:5, 11:8, 8 + 0:5))
(ux <- unique(x))           # apresenta uma lista de valores distintos
length(x)                   # 13 elementos, contando as repeticoes
length(unique(x))           # 9 elementos únicos
duplicated(x)               # indica as posicoes onde há duplicações, vetor de FALSEs and TRUEs

(tab <- table(duplicated(x)))     # cria uma tabela com a quantidade de duplicados e não duplicados do vetor x
tab [1] # Existe 9 FALSE dentro de duplicated(x)
prop.table(tab)                   # proporções de FALSE e TRUE na tabela (porcentagem)
(linha <- sample(c('a','b'), 10, replace = T)) # cria um vetor Randomico com as letras a e b
(coluna <- sample(c('c','d'), 10, replace = T))
length(linha)
(tab2 <- table(linha, coluna)) # tabela cruzada, múltiplica elemento por elemento referenciado pela posição 
  #linha: "a" "b" "a" "a" "a" "a" "b" "b" "b" "b"
  #coluna: "c" "d" "c" "c" "d" "c" "c" "c" "c" "d"
  # R: Existem 4 combinações de a*c, 1 combinação de a*d e assim por diante
margin.table(tab2, 1)       # soma marginal na linha (margin=1), soma das linhas
margin.table(tab2, 2)       # soma marginal na coluna (margin=2), soma das colunas
margin.table(tab2)          # soma marginal total, soma de linhas mais colunas, no final é a quantidade de elementos na tabela
addmargins(tab2) # Adiciona a somas marginais a tabela

match(1:10, c(1,9,8,4))     # retorna um vetor das posições do primeiro objeto que corresponde com o segundo
1:10 %in% c(1,9,8,4)        # retorna TRUE onde há correspondência e FALSE caso contrário

(r1 <- rank(x1 <- c(3,1,4,15,92)))    # indica a ordem de cada elemento do vetor, a ordem é definida de acordo com valores crescente
#exemplo: 1 é menor que 3, por isso sua posição no rank é 1 e 3 é 2
x2 <- c(3,1,4,1,5,9,2,6,5,3,5)
(names(x2) <- letters[1:length(x2)])
(r2 <- rank(x2))   #????                       # ties.method = c('average', 'first', 'last', 'random', 'max', 'min')

sample(1:60, size=6)                      # amostra pseudo-aleatoria para jogar na mega-sena
set.seed(20); sample(1:60, size=6)        # ajustando a semente pseudo-aleatoria
set.seed(20); sort(sample(1:60, size=6),decreasing=T)  # ordenando, para facilitar a leitura

letters                       # letras minusculas
LETTERS                       # letras maiusculas
LETTERS[1]                    # primeira posição de LETTERS
noquote(letters)              # sem aspas

substr('abcdef', 2, 4)        # apresenta da segunda ate a quarta posição

x <- c('Tche', 'Churrasco', 'Chimarrao', 'Farrapo', 'Gaita', 'Bah')
strsplit(x, 'a')              # retira a letra 'a'

tolower(x)    # minusculas
toupper(x)    # maiusculas

texto <- 'Rio Grande do Sul'
nchar(texto)    # conta o número de caracteres, contando os espaços
stringi::stri_stats_latex(texto)  # relatório mais completo

x <- c(2,4,-2,6,7,8)
diff(x)           # tira a diferenca, note que restam n-1 elementos
range(x)          # apresenta o mínimo e o máximo
diff(range(x))    # tira a diferenca entre o mínimo e o máximo (amplitude)

as.Date('11/3/1981', format = '%d/%m/%Y')   # coloca no formato de data...
as.Date('3:11:1981', format = "%m:%d:%Y")   # ... não importa o separador
(data <- as.Date('11/3/1981', format='%d/%m/%Y'))
class(data)       # classe Date
months(data)      # mês
weekdays(data)    # dia da semana
quarters(data)    # trimestre
Sys.Date() - data # número de dias entre hoje e data - Time difference of 14997 days

(m <- cbind(x = 1:10, y = (-4:5)^2)) # Cria uma matriz de 10 linhas e 2 colunas   
split(m, col(m))      # divide uma matriz em uma lista pelas colunas, gerando uma lista
split(1:20, 1:2)      # divide a sequencia de 1 a 20 de dois em dois valores (pares/ímpares)

(x <- rep(1:3,3))
car::recode(x, " c(1,2) = 'A'; else = 'B' ")  # recodifica ?????
