*** Settings ***
Library           RequestsLibrary

*** Variables ***
${BASE_URL}       https://dummyjson.com

*** Test Cases ***
Teste de GET para Buscar Produto
    [Documentation]    Este teste verifica se um produto específico pode ser recuperado via API.
    ${response}=       GET    ${BASE_URL}/products/1  expected_status=200
    Log    ${response.content}   # Loga o conteúdo da resposta para verificar
    ${body}=           Evaluate    ${response.json()} if '${response.content}' else 'N/A'    # Valida se existe JSON
    Log    ${body}    # Log do conteúdo da resposta
    Should Not Be Equal As Strings    ${body}    N/A    # Verifica se a resposta JSON não está vazia
    Should Be Equal As Numbers    ${body["id"]}    1
    Should Be Equal     ${body["title"]}    Essence Mascara Lash Princess

Teste de POST para Criar Produto
    [Documentation]    Este teste verifica se um novo produto pode ser criado via API.
    ${data}=           Create Dictionary    title=ProdutoTeste    price=100
    ${response}=       POST   ${BASE_URL}/products/add    json=${data}   expected_status=201
    Log    ${response.content}   # Loga o conteúdo da resposta para verificar
    ${body}=           Evaluate    ${response.json()} if '${response.content}' else 'N/A'
    Log    ${body}    # Log do conteúdo da resposta
    Should Not Be Equal As Strings    ${body}    N/A    # Verifica se a resposta JSON não está vazia
    Should Contain     ${body["title"]}    ProdutoTeste
    Should Be Equal As Numbers    ${body["price"]}    100

Teste de PUT para Atualizar Produto
    [Documentation]    Este teste verifica se um produto existente pode ser atualizado via API.
    ${data}=           Create Dictionary    price=150
    ${response}=       PUT    ${BASE_URL}/products/1    json=${data}   expected_status=200
    Log    ${response.content}   # Loga o conteúdo da resposta para verificar
    ${body}=           Evaluate    ${response.json()} if '${response.content}' else 'N/A'
    Log    ${body}    # Log do conteúdo da resposta
    Should Not Be Equal As Strings    ${body}    N/A    # Verifica se a resposta JSON não está vazia
    Should Be Equal As Numbers    ${body["price"]}    150

Teste de DELETE para Excluir Produto
    [Documentation]    Este teste verifica se um produto pode ser excluído via API.
    ${response}=       DELETE    ${BASE_URL}/products/1   expected_status=200
    Log    ${response.content}   # Loga o conteúdo da resposta para verificar
    ${body}=           Evaluate    ${response.json()} if '${response.content}' else 'N/A'
    Log    ${body}    # Log do conteúdo da resposta
    Should Not Be Equal As Strings    ${body}    N/A    # Verifica se a resposta JSON não está vazia
    Should Be True     ${body["isDeleted"]}
