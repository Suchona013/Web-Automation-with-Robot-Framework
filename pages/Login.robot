*** Settings ***
Library    SeleniumLibrary

Variables    ../locators/loginLocators.py
Variables    ../locators/HomepageLocators.py



*** Variables ***

*** Keywords ***
Login into the account with valid credential
    [Arguments]    ${email}     ${password}
    input text    ${login_email}   ${email}
    input text    ${login_pass}     ${password}
    click button    ${loginBtn}