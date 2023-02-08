*** Settings ***
Library  SeleniumLibrary
Library    Collections

*** Variables ***
${BROWSER}  chrome
${URL}      https://www.google.com/search?client=firefox-b-d&q=what+is+udemy

*** Test Cases ***
Example
    Open Browser        ${URL}      ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath://span[text()="Next"]
    Click "Next" button until the last page

*** Keywords ***
 Click "Next" button until the last page
    FOR  ${counter}  IN  RANGE  (0, 100)
    # Replace "Next" with the actual text or id of the button on your page
        Click Element  xpath=//span[text()="Next"]
    # Replace "End of pages" with the actual text that indicates the last page
        ${text}=  Get Text  xpath://span[text()='Next']
        Run Keyword And Return Status       Continue For Loop If    '${text}'=='Next'
        Exit For Loop If    '${text}'=!'Next'
#        Page Should Not Contain Element     xpath://span[text()="Next"]
#        BREAK
#        Exit For Loop
    END
#    Sleep       5
#    # End of loop
#
#    Close Browser