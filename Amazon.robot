*** Settings ***
Library    SeleniumLibrary
Suite Setup    Browsing Setup
*** Variables ***
${url}      https://www.amazon.in/
${browser}      chrome

*** Keywords ***
Browsing setup
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    20
    Click Element    xpath://span[text()='Account & Lists']

Log in credentials
    Input Text    name:email    8374420236
    Click Button    id:continue
    Input Text    name:password        Thippeswamy@0224
    Click Element   xpath://span[contains(@id,'signin')]

filter
    Click Element    xpath:(//span[text()='All'])[2]
    Click Element    xpath://div[text()="TV, Appliances, Electronics"]
    Click Element    xpath://a[text()='Televisions']
    Click Element    xpath://span[text()='Smart Televisions']

choose

    ${tv}       Get Element Count    xpath://a[@class='a-link-normal s-no-outline']
    FOR    ${tv}    IN RANGE    4
        Click Element    xpath://a[@class='a-link-normal s-no-outline']
        Switch Window    NEW
        Wait Until Element Is Visible    id:add-to-cart-button
        Click Element    id:add-to-cart-button
        Log To Console    Added  ${tv} to cart
        Switch Window    MAIN
    END
Add to cart
    ${cart}     Get Element Count   xpath://span[contains(text(),'inches') and contains(text(),'TV')]

    Click Element    xpath://span[@class="nav-cart-icon nav-sprite"]
    ${total}    Get Text    id:sc-subtotal-label-buybox
    ${amount}   Get Text    xpath://span[@class="a-size-medium a-color-base sc-price sc-white-space-nowrap"]
    Log To Console    ${total}
    Log To Console    ${amount}

search
    Input Text    id:twotabsearchtextbox    Television
    Click Element    id:nav-search-submit-button

*** Test Cases ***
test
    Log In Credentials
#    Filter
    Search
    Choose
    Add To Cart
    Sleep    3