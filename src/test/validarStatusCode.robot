
*** Settings ***
Library    RequestsLibrary

*** Variables ***


*** Test Cases ***
Validar status code Consulta os Blocos por ID
    Inciar teste
    #Variavel:
    ${resp} =    GET On Session    api_session    /blocos/587    expected_status=200   

Validar status code Consulta os Deputados por ID
    Inciar teste
    ${resp} =    GET On Session    api_session    /deputados/204379    expected_status=200  

Validar status code Consulta os Eventos por ID
    Inciar teste
    ${resp} =    GET On Session    api_session    /eventos/70087    expected_status=200

*** Keywords ***
Inciar teste
    Create Session    api_session    https://dadosabertos.camara.leg.br/api/v2