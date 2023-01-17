*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
selectwindows
    Open Browser    https://demo.guru99.com/popup.php   chrome
    Maximize Browser Window
    Click Element    xpath://a[normalize-space()='Click Here']
    select Window   title= Guru99 Bank Home Page
    Input Text    xpath://input[@name='emailid']
    Click Button    xpath://input[@name='btnLogin']
    Click Element    xpath://a[.='Click Here']
    Close Browser

switchtomultiplebrowsers
    Open Browser    https://www.youtube.com/channel/UC46vj6mN-6kZm5RYWWqebsg    chrome
    Maximize Browser Window
    Sleep    3

    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    Sleep    3

    Switch Window    Main
    ${a}=   Get Title
    Log To Console    ${a}

    Switch Window    New
    ${b}=   Get Title
    Log To Console    ${b}

    Close All Browsers
