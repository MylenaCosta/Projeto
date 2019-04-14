Algoritmo "PROJETO"
//
//
// Disciplina   : LPOO
// Professor   : ALDO HENRIQUE
// Autor(a)    : MYLENA COSTA
// Data atual  : -----
Var
   menu:caracter
   n1,n2,resul,divisao:real
   num,contador,cont1,cont2,x:inteiro
   m,f,sexo:caracter
   qntp,tidade, idade,y:inteiro
   totalm,totalf,idadem,idadef:inteiro
   mediaidade,mediam,mediaf:real
   //---------------------------------------------
funcao fdivisao(num1:inteiro;num2:inteiro):real
inicio
   divisao<-num1/num2
   retorne divisao
fimfuncao
//---------------------------------------------------
inicio
   repita
      escreval("MENU")
      escreval("|1-DIVISÃO" )
      escreval("|2-FAIXA ETÁRIA")
      escreval("|3-NÚMEROS PRIMOS")
      escreval("|4-MAIOR, MENOR E MÉDIA")
      escreval("|5-CÓDIGO MORSE")
      escreval("|6-MUDANÇA DE BASE")
      escreval("|7- SAIR")
      leia(menu)
      limpatela
      se(menu="1") entao
         escreval("INSIRA O PRIMEIRO NÚMERO")
         leia(n1)
         escreval("INSIRA O SEGUNDO NÚMERO")
         leia(n2)
         resul<-fdivisao(n1,n2)
         escreval("Sua Divisão é :",resul)
      fimse
      se(menu="2")entao
         escreval("INSIRA A QUANTIDADE DE PESSOA: ")
         leia(qntp)
         para y de 1 ate qntp faca
            escreval("INSIRA A IDADE",y," PESSOA")
            leia(idade)
            tidade<-tidade+idade
            escreval("INSIRA (f) PARA FEMININO OU (m) PARA MASCULINO",y," pessoa")
            leia(sexo)
            se (sexo="m") entao
               totalm<-totalm+1
               idadem<-idadem+idade
            senao
               se (sexo="f") entao
                  totalf<-totalf+1
                  idadef<-idadef+idade
               fimse
            fimse
         fimpara
         mediaidade<-tidade/qntp
         escreval("A MÉDIA DAS PESSOAS É:",mediaidade," ANOS..")
         mediam<-idadem/totalm
         mediaf<-idadef/totalf
         escreval("A MÉDIA DO SEXO MASCULINO É",mediam,"ANOS.")
         escreval("A MEDIA DO SEXO FEMININO É",mediaf,"ANOS.")
      fimse
      se(menu="3")entao
         escreval("DIGITE UM NÚMERO PARA DESCOBRIR SEUS ANTECESSORES PRIMOS")
         leia(num)
         contador<-0
         cont1<-2
         cont2<-1
         se num>0 entao
            enquanto cont1<=num faca
               enquanto cont2<=cont1 faca
                  se cont1 mod cont2=0 entao
                     contador<-contador+1
                  fimse
                  cont2<-cont2+1
               fimenquanto
               se contador=2 entao
                  escreval(cont1)
                  x<-x+cont1
               fimse
               cont1<-cont1+1
               cont2<-1
               contador<-0
            fimenquanto
            escreval("A SOMA TOTAL DOS NÚMEROS PRIMOS É  : ",x)
         fimse
      fimse
   ate(menu="7")
Fimalgoritmo