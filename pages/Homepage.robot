*** Settings ***
Library    SeleniumLibrary

Variables    ../locators/HomepageLocators.py



*** Variables ***

*** Keywords ***
Search a item
    [Arguments]    ${search_keyword}
    input text    ${searchTextBox}  ${search_keyword}
    click button    ${searchIcon}
