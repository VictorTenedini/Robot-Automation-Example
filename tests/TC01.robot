*** Settings ***
Resource        ../steps/login.robot

*** Variables ***


*** Keywords ***


    
*** Test Cases ***
Cenário 1: Fazer Cadastro com sucesso
    Open site
    Filling signup    
    Filling Registration form

    