# Exemplo de Automação de Página Web com Robot Framework

Este projeto demonstra um exemplo da automação de um cadastro de usuário da página web (https://automationexercise.com) utilizando o Robot Framework com Python.

## Pré-requisitos

Antes de começar, você precisará ter os seguintes itens instalados em seu sistema:

1. **Python**: Certifique-se de que o Python está instalado. Você pode baixá-lo em [python.org](https://www.python.org/).
   - Verifique a instalação com: `python --version`

2. **Pip**: O gerenciador de pacotes do Python, geralmente já incluído na instalação do Python.
   - Verifique a instalação com: `pip --version`

3. **Robot Framework**: Instale o Robot Framework utilizando pip.
   ```bash
   pip install robotframework

4. **SeleniumLibrary**: Biblioteca necessária para automação de navegadores com Robot Framework.

   ```bash
    pip install robotframework-seleniumlibrary

5. **ChromeDriver**: WebDriver necessário para controlar o navegador Google Chrome.

    Baixe a versão compatível com a sua versão do Chrome em ChromeDriver - WebDriver for Chrome (https://googlechromelabs.github.io/chrome-for-testing/).
    Adicione o ChromeDriver ao seu PATH do sistema.

6. **RequestsLibrary**
   ```bash
    pip install robotframework-requests 

# Como Executar os Testes

1. **Clonar o projeto**: Clone este repositório para o seu ambiente local:

    ```bash
    git clone https://github.com/VictorTenedini/Robot-Automation-Example.git
    cd Robot-Automation-Example

2. **Testes Web**: Para executar os testes de de Web, utilize o seguinte comando:

    ```bash
    robot -d reports tests/TC01.robot

3. **Testes de API**: Para executar os testes de API, utilize o seguinte comando:

    ```bash
    robot -d reports api/crud.robot

4. **Reports**

    ### -d reports: Diretório onde os relatórios de execução serão salvos.

    ### tests/TC01.robot & api/crud.robot: Caminhos dos arquivos de teste a serem executados.

    ### Após a execução, você pode visualizar os relatórios de testes na pasta reports.