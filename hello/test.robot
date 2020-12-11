

***Settings***
Library     app.py




***Test Cases***
Deve retornar mensagem de boas vindas
    ${result}=           Welcome         Vitor
    Should Be Equal      ${result}       Olá Vitor, bem vindo ao Curso básico de Robot Framework!
    ## Comparar duas strings usando 'Should Be Equal'


***Keywords***


