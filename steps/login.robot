*** Settings ***

Resource         ../resource/settings.resource
Resource         ../elements/login_elements.resource

*** Keywords ***
Open site 
    Open Browser    ${URL_Automation}     ${Browser} 
    Set Selenium Speed    0.5s
    Set Selenium Implicit Wait    5s
    Set Selenium Timeout    5s

Filling signup
    ${random_string}=    Generate Random String    12    [LOWER]

    Input Text    ${signup.username}    Teste_${random_string}
    Input Text    ${signup.email}    teste_${random_string}@email.com
    Click Element    ${signup.button}    

Filling Registration form
    Click Element   ${register.gender_input}
    Input Text      ${register.password_input}                 ${password}   
    Click Element   ${register.days_input}
    Click Element   ${register.days_input_5}
    Click Element   ${register.months_input}
    Click Element   ${register.months_input_3}
    Click Element   ${register.years_input}
    Click Element   ${register.years_input_1990}
    Click Element   ${register.newsletter_checkbox}
    Click Element   ${register.special_offers_checkbox}
    Input Text      ${register.first_name_input}               ${first_name}
    Input Text      ${register.last_name_input}                ${last_name}
    Input Text      ${register.company_input}                  ${company}
    Input Text      ${register.address1_input}                 ${address1}
    Input Text      ${register.address2_input}                 ${address2}
    Click Element   ${register.country_drop}
    Click Element   ${register.country_opt_canada}
    Input Text      ${register.state_input}                    ${state}
    Input Text      ${register.city_input}                     ${city}
    Input Text      ${register.zip_input}                      ${zipcode}
    Input Text      ${register.mobile_num_input}               ${mobile_number}
    Click Element   ${register.btn_create_acc}


    
