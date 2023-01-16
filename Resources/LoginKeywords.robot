*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locatores.yml

*** Keywords ***
Open_my_browser
    [Arguments]    ${url}   ${browser}
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

open_my_site_url
    [Arguments]    ${siteurl}   ${browser}
    Open Browser    ${siteurl}  ${browser}

Click_Button
#    [Arguments]    ${button}
    Click Element   ${click_button}


Verify page
    Title Should Be     Guru99 Bank Home Page

Emailid
    [Arguments]    ${username}
    Input Text    ${Email_id}   ${username}

submit_button
    Click Element    ${Submit_button}

valid_page
    Title Should Be      Guru99 Bank Home Page

btn
    Click Element    ${click_here_btn}

close my browsers
    Close Browser
