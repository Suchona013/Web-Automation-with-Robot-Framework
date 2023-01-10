*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary     WITH NAME   faker
Variables    ../locators/SignUpLocators.py
Variables    ../locators/HomepageLocators.py
Resource    ../pages/EnvSetUp.robot


*** Variables ***

*** Keywords ***

Create an account
    [Arguments]    ${first}     ${last}     ${email}    ${password}
#    open browser    ${url}  ${browser}
#    maximize browser window
#    sleep   5
    click link    ${create_btn}
    sleep    5
    input text    ${firstName_textbox}  ${first}
    #set selenium speed    1
    input text    ${lastName_textbox}   ${last}
    input text    ${email_textbox}     ${email}
    input text    ${password_textbox}   ${password}
    input text    ${confirmPassword_textbox}    ${password}
    click button    Create an Account

