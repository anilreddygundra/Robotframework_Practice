*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    String

*** Variables ***
${browser}      chrome
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
*** Test Cases ***
example
    Open Browser    ${url}      ${browser}
    maximize browser window
    Sleep    3
    ${a}=   Get Text    xpath://div[@class="orangehrm-login-slot"]
    Log To Console    ${a}
    ${reg_pat}      Get Regexp Matches      ${a}    [+-]?([0-9]*[.])?[0-9]+     #Pattern to get digits inside stored variable
    Log To Console    ${reg_pat}
    Login Orange        Admin       admin123
    Sleep    5
*** Keywords ***
Login Orange
    [Arguments]     ${username}     ${password}
    Input Text    xpath://input[@name="username"]       ${username}
    Input Text    xpath://input[@name="password"]       ${password}
    Click Element    xpath://button!wq!
