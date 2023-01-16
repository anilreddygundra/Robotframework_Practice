*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locatores.py

*** Keywords ***
Open my browser
    [Arguments]    ${siteurl}   ${browser}
    Open Browser    ${siteurl}  ${browser}
    Maximize Browser Window

test_Username
    [Arguments]    ${username}
    Input Text    ${txt_UserName}   ${username}

test_Password
    [Arguments]    ${password}
    Input Text    ${txt_Password}   ${password}

click_button
    Click Element    ${click_btn}

verify page
    Title Should Be     Login: Mercury Tours

close my browser
    Close All Browsers

LaunchBrowser
    [Arguments]    ${siteurl}   ${sitebrowser}
    Open Browser    ${siteurl}   ${sitebrowser}
    Maximize Browser Window
    ${title}=   Get Title
    [RETURN]    ${title}