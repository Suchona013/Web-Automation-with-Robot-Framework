*** Settings ***
Library    SeleniumLibrary

Variables    ../locators/productLocators.py
Variables    ../locators/checkout.py



*** Variables ***

*** Keywords ***
Sorting Product List
    [Arguments]    ${sorting_params}
    select from list by label    ${sortBy}  ${sorting_params}
    sleep       2


Product Scrrenshot
    ${single_product}=  Get WebElements    ${product_card}
    Execute Javascript    window.scrollTo(0, window.scrollY+1600)
    FOR    ${i}     IN RANGE   0    3
        ${x}=   Get Text    ${single_product}[${i}]
        capture element screenshot    ${single_product}[${i}]  F:\\automation with python\\Web Automation with Robot Framework\\screenshots\\product[${i}].png
    END

Add to Cart
    ${row}=  Get WebElements    ${products}
    ${add_to_cart}=   Get WebElements    xpath:(//span[contains(text(),'Add to Cart')])
    ${product_color} =  create list    xpath:(//div[@id='option-label-color-93-item-50'])[1]     xpath:(//div[@id='option-label-color-93-item-56'])[1]       xpath:(//div[@id='option-label-color-93-item-49'])[1]
    FOR    ${i}     IN RANGE   0    3
        ${x}=   Get Text    ${row}[${i}]
        ${size_of_a_product}=   Get WebElements    ${size}
        click button    ${size_of_a_product}[${i}]
        sleep    2
        click element    ${product_color}[${i}]
        sleep    1
        click button    ${add_to_cart}[${i}]

        log to console    ${x}
    END
    set selenium speed    2
    scroll element into view    ${cart_icon}
    click element    ${cart_icon}
    click button    ${checkout}







