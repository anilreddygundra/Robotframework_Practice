*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
NavigationTest
    Open Browser    https://www.google.com/     chrome
    ${location}=    Get Location
    Log To Console    ${location}
    Capture Page Screenshot    google.png

    Go To    https://www.bing.com/
    ${location}=    Get Location
    Log To Console    ${location}
    Capture Page Screenshot    bing.png

    Go Back
    ${location}=    Get Location
    Log To Console    ${location}
    Sleep    5
    Close Browser