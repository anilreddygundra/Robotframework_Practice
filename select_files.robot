*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://demo.automationtesting.in/Selectable.html
${browser}      chrome

*** Test Cases ***
select
        Open Browser    ${url}      ${browser}
        Maximize Browser Window
        Set Selenium Speed    1
        Click Element    xpath://a[.='Serialize ']
        Press Keys    xpath:(//li[.='Sakinalium - Readability'])[last()]       \1
        Press Keys    xpath:(//b[text()='Sakinalium - Single Line Coding'])[last()]    \\40
        Sleep    5
#        Page Should Contain
#        Press Key    c