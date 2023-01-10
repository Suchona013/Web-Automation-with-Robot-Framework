*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary     WITH NAME   faker
Variables    ../locators/SignUpLocators.py
Variables    ../locators/loginLocators.py
Resource    ../pages/SignUp.robot
Resource    ../pages/Login.robot
Resource    ../pages/Homepage.robot
Resource    ../pages/ProductLists.robot
Resource    ../pages/Checkout.robot

Suite Setup    lanch browser

*** Variables ***
${search_keyword}   Jacket
${sorting_params}   Price


*** Test Cases ***
Register a new user
    ${first}=   faker.Name
    ${last}=   faker.Name
    ${fakeEmail}=   faker.Email
    ${fakePassword}=    faker.Password
    set global variable    ${fakeEmail}
    set global variable    ${fakePassword}
    Create an account   ${first}    ${last}     ${fakeEmail}        ${fakePassword}
    click button    ${arrow_icon}

    click link    ${sign_out}
    sleep    5

Login account
    ${email}=   get variable value   ${fakeEmail}
    ${pass}=   get variable value   ${fakePassword}
    click link    ${signIn}
    wait until element is visible    ${login_email}
    Login into the account with valid credential    ${email}    ${pass}
    sleep    2

Search
    Search a item   ${search_keyword}
    sleep    2

Sorting items
    Sorting Product List    ${sorting_params}
    sleep    1

Take Product Screenshot
    Product Scrrenshot
    sleep    2

Add Product to the Cart
    Add to Cart
    sleep    2

Checkout
    ${company_name}=    faker.Company
    ${address}=     faker.Address
    ${city_name}=   faker.City
    ${code}=    faker.Zipcode
    ${phn_no}=  faker.Phone Number
    Checkout Product     ${company_name}     ${address}      ${city_name}    Alaska      ${code}     Yemen   ${phn_no}
    sleep    5