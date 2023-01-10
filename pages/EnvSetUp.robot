*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://magento.softwaretestingboard.com/
${browser}  chrome


*** Keywords ***
lanch browser
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    1


close all browsers
    close browser
