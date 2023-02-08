*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}       https://nxtgenaiacademy.com/alertandpopup/
${browser}      chrome
*** Test Cases ***
Test:
    Open Browser    ${url}      ${browser}
    Set Selenium Implicit Wait    100
    Maximize Browser Window
#    Page Should Contain    Demo Site – Alert and Popup – NxtGen A.I Academy
    Click Button    xpath://button[.="Confirm Alert Box"]
    Handle Alert    Accept


    Sleep    2