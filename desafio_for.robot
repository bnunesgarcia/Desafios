#Declare uma variável do tipo lista com vários números

Crie uma keyword que percorra essa lista usando o FOR

Dentro do FOR, faça um bloco IF que imprima no Log a frase "Eu sou o número 5!" 
e "Eu sou o número 10!", ou seja, só pode imprimir quando o número atual da lista for 5 ou 10.

Use o ELSE para imprimir no Log a frase "Eu não sou o número 5 e nem o 10!"

*** Settings ***

Documentation    Suite de testes do tipo lista com varios numeros
Library    SeleniumLibrary

*** Variables ***

@{MINHA_LISTA_NUMEROS}    2    4    5    7    9    10    11

*** Test Cases ***

Teste para percorrer lista de numeros usando or
    [Documentation]    Esse teste chama uma keyword que percorre a lista de numeros utilizando or
    imprimir quando o número atual da lista for 5 ou 10

Teste para percorrer lista de numeros usando in
    [Documentation]    Esse teste chama uma keyword que percorre a lista de numeros utilizando in
    imprimir quando o número atual da lista estiver dentro de 5 e 10
*** Keywords ***
imprimir quando o número atual da lista for 5 ou 10
    Log To Console    ${\n}

    FOR    ${NUMEROS}    IN    @{MINHA_LISTA_NUMEROS}
        IF    ${NUMEROS} == 5 or ${NUMEROS} == 10
            Log To Console    Eu sou o número ${NUMEROS}!

        ELSE 
            Log To Console    Eu não sou o número 5 e nem o 10!      
        
        END


    END

imprimir quando o número atual da lista estiver dentro de 5 e 10
    Log To Console    ${\n}
    
    FOR    ${NUMEROS}    IN    @{MINHA_LISTA_NUMEROS}
        IF    ${NUMEROS} in (5, 10)
            Log To Console    Eu sou o numero ${NUMEROS}
        ELSE
            Log To Console    Eu não sou o número 5 e nem o 10!       
            
        END
    END

