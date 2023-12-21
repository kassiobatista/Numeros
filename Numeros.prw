#INCLUDE "PROTHEUS.CH"

Static nQtdDecim    := 3
Static nTamStrg     := 20


/*/(Protheus.doc) Operadores Matemáticos
Função : Analista de Sistemas
@author Kassio B.
Since 21/12/2023
@version 12 superior
/*/


User Function Numeros()

    Local nNum1         := 0
    Local nRes          := 0
    Local nNum2         := 0
    Local nNum3         := 0
    Local nNum4         := 0
    Local nExpoente     := 0
    Local cNum          := ""
    Local cResposta     := ""

    // Operações matemáticas //

    //--------- SOMA ---------//

    nNum1   := 45
    nNum2   := 77
    nRes    := nNum1 + nNum2

    //--------- SUBTRAÇÃO ---------// 

    nNum1   := 8985
    nNum2   := 8914
    nRes    := nNum1 - nNum2

    //--------- MULTIPLICAÇÃO ---------// 

    nNum1   := 94
    nNum2   := 77
    nRes    := nNum1 * nNum2

    //--------- DIVISÃO ---------//

    nNum1   := 90
    nNum2   := 10
    nRes    := nNum1 / nNum2 

    //--------- EXPONENCIAÇÃO ---------// 

    nNum1   := 7
    nExpoente   := 5
    nRes    := nNum1 ^ nExpoente

    //--------- RESTO DA DIVISÃO ---------// 

    nNum1   := 100
    nNum2   := 2
    nRes    := nNum1 % nNum2

    nNum1   := 70
    nNum2   := 13
    nRes    := nNum1 % nNum2    

    //--------- PRIORIZAÇÃO ---------// 

     nNum1         := 70
     nNum2         := 96
     nNum3         := 7
     nNum4         := 4
     nRes          := nNum1 + nNum2 / nNum3 * nNum4
     nRes          := ((nNum1 + nNum2) * nNum3) / nNum4


    // Comparação  

    //--------- EXATAMENTE IGUAL ---------// 

    nNum1   := 100
    nNum2   := 50
    cResposta   := If(nNum1 == nNum2, "Igual", "Diferente")

    //--------- MAIOR ---------// 
    nNum1   := 100
    nNum2   := 50
    cResposta   := IF(nNum1 > nNum2, "Maior", "Igual ou menor")

    //--------- MENOR ---------// 
    nNum1   := 50
    nNum2   := 100
    cResposta   := IF(nNum1 < nNum2, "Menor", "Igual ou maior")

    //--------- DIFERENTE ---------// 
    nNum1   := 100
    nNum2   := 100
    cResposta   := IF(nNum1 != nNum2 .Or. nNum1 <> nNum2, "Diferente", "Igual")

    //Funções mais usadas para números

    //--------- RETORNA O VALOR ABSOLUTO ---------// 
    nNum1   := -987.78
    nRes    := Abs(nNum1)

    //--------- RETORNA O VALOR INTEIRO ---------// 
    nNum1   := -987.78
    nRes    :=  Int(nNum1)

    //--------- RETORNA O MAIOR DE DOIS NÚMEROS ---------// 
    nNum1   := 78
    nNum2   := 92
    nRes    := MAX(nNum1, nNum2)

    //--------- RETORNA O MENOR DE DOIS NÚMEROS ---------// 
    nNum1   := 78
    nNum2   := 92
    nRes    := MIN(nNum1, nNum2)

    //--------- DELIMITA DECIMAIS COM ARREDONDAMENTO ---------// 
    nNum1   := 1234.56789
    nRes    := Round(nNum1,nQtdDecim)

    //--------- DELIMITA DECIMAIS SEM ARREDONDAMENTO ---------// 
    nNum1   := 1234.56789
    nRes    := NoRound(nNum1,nQtdDecim)

    //--------- GERAR NÚMERO RANDOM ENTRE VALOR MÁXIMO E MINIMO ---------// 
    nNum1   := 10
    nNum2   := 70000
    nRes    := RANDOMIZE( nNum1,nNum2)

    //--------- CONVERTER TEXTO EM NÚMERO ---------// 
    cNum    := "799"
    nRes    := VAL(cNum)

    //--------- CONVERTER NÚMERO EM TEXTO ---------// 
    nNum1   := 774
    cResposta   := cValToChar(nNum1)

    //--------- CONVERTER NÚMERO EM TEXTO ADICIONANDO ESPAÇOS À ESQUERDA ---------// 
    nNum1   := 1561.949856
    cResposta   := STR(nNum1,nTamStrg,nQtdDecim)

    //--------- CONVERTER NÚMERO EM TEXTO ADICIONANDO ESPAÇOS À ESQUERDA ---------//
    nNum1   :=  792125
    cResposta   := StrZero(nNum1, nTamStrg, nQtdDecim)

    //--------- CONVERTER NÚMERO EM TEXTO USANDO MÁSCARA ---------//
    nNum1   := 10781934.611781
    cResposta   := "Um dia terei um patrimônio maior que R$" + Transform(nNum1, "@E 999,999,999,99" + "!. Eu acredito e sempre acreditei que teria muito sucesso")

RETURN


