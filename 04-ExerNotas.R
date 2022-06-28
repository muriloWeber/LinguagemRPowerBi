# Exercícios de fixação R

# Exercício 1: Apresente um resumo de tipos de dados e estatísticasdo dataset.

# Definindo a pasta de trabalho

setwd("H:/Meu Drive/Cursos/PowerBI-DataScience/Cap12-LinguagemRePowerBIparaAnáliseEstatística")

# Carregando o dataset
notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")

View(notas)
str(notas)
summary(notas)
View(notas)

# Exercício 2: Qual a média de cada turma?

mean(notas$TurmaA)
mean(notas$TurmaB)

# Exercício 3: Qual turma apresentou maior variabilidade de notas? Justifique sua resposta.

sd(notas$TurmaA)
sd(notas$TurmaB)
# A turma A apresentou maior variabilidade de notas porque seu desvio padrão é maior do que a turma B

# Exercício 4 -Calcule o coeficiente de variação das 2 turmas.

# CV TurmaA

meanA <- mean(notas$TurmaA)
sdA <- sd(notas$TurmaA)

cvA <- ((sdA / meanA) * 100)
print(cvA) # CV turma A = 21,9% 

# CV TurmaB

meanB <- mean(notas$TurmaB)
sdB <- sd(notas$TurmaB)

cvB <- ((sdB / meanB) * 100)
print(cvB) # CV turma B = 10,03%

# Exercício 5 -Qual nota apareceu mais vezes em cada turma?

# Moda
# Criando uma função
moda <- function(v) {
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

moda(notas$TurmaA) # Moda da Turma A = 82
moda(notas$TurmaB) # Moda da Turma B = 60