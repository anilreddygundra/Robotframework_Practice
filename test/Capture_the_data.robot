*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    String
*** Test Cases ***
example
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login      headlesschrome
    maximize browser window
    Sleep    3
    ${a}=   Get Text    xpath://p[normalize-space()='OrangeHRM OS 5.2']
    Log To Console    ${a}
    ${reg_pat}      Get Regexp Matches      ${a}    [+-]?([0-9]*[.])?[0-9]+     #Pattern to get digits inside stored variable
    Log To Console    ${reg_pat}


