# Material produzido pelo professor Filipe Zabala em seu curso para iniciantes
#no R: https://www.youtube.com/watch?v=oaJ2hRO1jRI&list=PLgnUrXr7_7coSfm067nFXPvShO18o6GQ_&index=12


2+4*3 # Operações algébricas básicas, mantendo as propriedades matemáticas

(2+4)*3 # Note a nova prioridade obtida com os parênteses

2^3 # Potências são indicadas por ^ ou **

1:10 # O símbolo : indica uma sequência, que pode ser crescente...

10:1 # ... ou decresecente

-(10:1) # Note a diferença do negativo com

-10:1 # ... e sem parênteses

x <- 2 # O símbolo <- (seta para esquerda) indica uma atribuição
x # Digitar o objeto criado apresenta seu conteúdo

x = 4 # Também é possível usar o igual desde a versão 1.8, semelhante ao Python
x

(y = 4) # Apresenta o resultado quando colocado entre parênteses

# = é similar a <-, porém menos versátil. Prefira seta, pois funciona sempre
(3 -> z) # A atribuição com seta pode, ainda, ser feita no sentido oposto

x+y*z # Pode-se operar com os valores atribuídos

c(2,0,1,2,4,2) # concatenar cria um vetor

(v <- c(2,0,1,2,4,2)) # Um vetor é facilmente criado com 'c' (concatenar)

2*v # Operações são facilmente realizadas com vetores

v^2 # Cada valor ao quadrado. Compare 'sum(v^2)' e '(sum(v))^2'

sum(v^2) # Faz a soma de todos o valores de v^2, ou seja (2^2 + 0^2 + 1^2...)

(sum(v))^2 # Faz a soma dos elementos de v e eleva ao quadrado, ou seja, 11^2

11^2 

# Posições em R são dados em colchetes
v[3] # Apresenta a terceira posição do vetor 'v'

# Também é possível pegar todas as posições exceto uma específica
v[-3] # Apresenta o vetor 'v', exceto a terceira posição

v[c(3,5)] # Apresenta a terceira e quinta posições do vetor 'v'
# Não é possível obter a mesma informação só com parênteses e esses números
#separados por vírgula, ou seja, v[(3,5)], não irá funcionar

v[3:5] # diferente do comando acima, apresenta os valores entre a posição 3 e 5

length(v) # Indica o tamanho do vetor 'v', teste ?length

cos(c(0,30,45,60)*pi/180) # Traz as informações de cosceno dos valores desejados

?MASS::fractions # Exibe a documentação da função
MASS::fractions(cos(c(0,30,45,60)*pi/180)) # Exibe resultado em forma de fração

# Formas para chamar funções:
MASS::fractions(0.5) # Método lambda

library(MASS) # No formato de importação de libraries
fractions(0.5)

# Constantes presentes dentro do R
letters[1:20] # letras minúsculas
LETTERS # letras maiúsculas

?noquote # Exibe o valor sem aspas
noquote(LETTERS) # letras maiúsculas sem aspas

substr('abcdef', 2, 4) # apresenta da segunda até a quarta posição

x <- c('Chimarrao', 'Gaita', 'Bah')
strsplit(x, 'a') # retira a letra 'a'

tolower(x) # minúsculas

x <- toupper(x) # maiúsculas

