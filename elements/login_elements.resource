*** Variables ***

&{signup}
...    username=css:[data-qa="signup-name"]
...    email=css:[data-qa="signup-email"]
...    button=css:[data-qa="signup-button"]

&{register}
...     gender_input=id:id_gender1
...     password_input=id:password
...     days_input=id:days
...     days_input_5=css:#days > [value="5"]
...     months_input=id:months
...     months_input_3=css:#months > [value="3"]
...     years_input=id:years
...     years_input_1990=css:#years > [value="1990"]
...     newsletter_checkbox=id:newsletter
...     special_offers_checkbox=id:optin
...     first_name_input=id:first_name
...     last_name_input=id:last_name
...     company_input=id:company
...     address1_input=id:address1
...     address2_input=id:address2
...     country_drop=id:country
...     country_opt_canada=css:option[value="Canada"]
...     state_input=id:state
...     city_input=id:city
...     zip_input=id:zipcode
...     mobile_num_input=id:mobile_number
...     btn_create_acc=css:[data-qa="create-account"]