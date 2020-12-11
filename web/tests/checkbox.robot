
***Settings***
Resource            base.robot

Test Setup          Nova Sessão
Test Teardown       Encerra Sessão


***Variables***
${check_thor}        id:thor 
${check_iron}        css:input[value='iron-man']
${check_panter}      xpath://*[@id="checkboxes"]/input[7]


***Test Cases***
Marcando opção com ID
    Go To                         ${url}/checkboxes     
    Select Checkbox               id:thor 
    checkbox Should Be Selected   id:thor 

Marcando opção com CSS Selector
    ##[tags]      ironman
    Go To                         ${url}/checkboxes     
    Select Checkbox               css:input[value='iron-man']
    checkbox Should Be Selected   css:input[value='iron-man']

Marcando opção com Xpath
    [tags]      ironman
    Go To                         ${url}/checkboxes     
    Select Checkbox               xpath://*[@id="checkboxes"]/input[7]
    checkbox Should Be Selected   xpath://*[@id="checkboxes"]/input[7]



