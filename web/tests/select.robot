
***Settings***
Resource            base.robot

Test Setup          Nova Sessão
Test Teardown       Encerra Sessão



***Test Cases***
Selecionando por texto e validar pelo valor
    Go To                               ${url}/dropdown                                        ##Acessa URL
    Select From List By Label           class:avenger-list          Scott Lang                 ##Seleciona Scott Lang
    ${selected}=                        Get Selected List Value     class:avenger-list         ##Pega valor do registro selecionado      
    Should Be Equal                     ${selected}=                7                          ##Verifica se selecionou o registro certo (7)
 

Selecionando pelo valor e validar pelo texto
    Go To                               ${url}/dropdown                                         ##Acessa URL
    Select From List By Value           id:dropdown                 6                           ##Seleciona Scott Lang
    ${selected}=                        Get Selected List Label     id:dropdown                 ##Pega valor do registro selecionado      
    Should Be Equal                     ${selected}=                                            ##Verifica se selecionou o registro certo (7)


    