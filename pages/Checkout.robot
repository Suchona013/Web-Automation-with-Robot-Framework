*** Settings ***
Library    SeleniumLibrary

Variables    ../locators/productLocators.py
Variables    ../locators/checkout.py

*** Keywords ***
Checkout Product
    [Arguments]         ${company_name}     ${address}      ${city_name}    ${state_name}  ${code}      ${country_name}   ${phn_no}

    input text    ${company}                ${company_name}
    input text    ${street}                 ${address}
    input text    ${city}                   ${city_name}
    select from list by label   ${state}    ${state_name}
    input text    ${zipcode}                ${code}
    select from list by label   ${country}    ${country_name}
    input text    ${phone}                    ${phn_no}
    click element    ${select_shipping_method}
    click button    ${next_btn}
    sleep    10
    click element    ${order_btn}
    page should contain     Thank you for your purchase!