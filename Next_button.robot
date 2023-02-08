*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}      https://www.adidas.co.in/eoss
${browser}      chrome
${Next}     //span[text()='Next']
*** Test Cases ***
Adidas_login
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    20
#    IF    Page Should Contain    NEXT
#    Click Element    xpath://span[text()='Next']
#    Click Element    xpath://span[text()='Next']
#    Click Element    xpath://span[text()='Next']/parent::a
#    Click Element    xpath://span[text()='Next']/parent::a
#    Click Element    xpath://span[text()='Next']/parent::a

#    FOR    ${i}    IN RANGE     0   999
#        IF
#            BREAK
#        ELSE
#             Click Element    xpath:${Next}
#        END
##        BREAK   IF  Page Does Not Contains      NEXT
#    END

#        FOR    ${i}    IN RANGE     0   999
#            Exit For Loop If    ${Next}!='NEXT'
#            Click Element    xpath://span[text()='Next']
#        END

#    FOR    ${i}    IN RANGE     0   999
#         ${val}=    Page Should Contain Element       //span[text()='Next']
#         IF    ${val}== True
#            Click Element    xpath://span[text()='Next']
#         ELSE
#            Log To Console    Page not present
#            BREAK
#         END
#    END
#    FOR    ${i}    IN RANGE     0   999
#        ${Result}   Page Should Contain Element    ${Next}
#        Run Keyword If   '${RESULT}'=='PASS'  Click_Next
#    END
    FOR    ${i}    IN RANGE     0   999
         ${count}    Get Element Count    ${Next}
#         Log To Console    ${count}
         IF    ${count}==1
            Sleep    1
            Click_Next
         END
         Exit For Loop If    ${count}!=1
    END
*** Keywords ***
Click_Next
    Click Element    xpath://span[text()='Next']

    Element Should Contain    ${Next}


#*** Settings ***
#Documentation  Switching between Browser Windows in Robot Framework
#Library  SeleniumLibrary
#Variables    test.py
#
#*** Variables ***
#
#*** Test Cases ***
##Switch between Browser windows using 'Browser Title' and verify the text
##    [documentation]  This test case verifies that the user is able to switch between browser
##    ...  windows using browser title and verify the text.
##    [tags]  Smoke
##    Open Browser  https://the-internet.herokuapp.com/windows  Chrome
##    Wait Until Element Is Visible  tag:h3  timeout=5
##    Click Element  css:[href="/windows/new"]
##    Switch Window  title:The Internet
##    Element Text Should Be  tag:h3  Opening a new window  timeout=5
##    Switch Window  title:New Window
##    Element Text Should Be  tag:h3  New Window  timeout=5
##    Close Browser
##
##Switch between Browser windows using 'Get Window Handles' and verify the text
##    [documentation]  This test case verifies that the user is able to switch between browser
##    ...  windows using window handles and verify the text.
##    [tags]  Smoke
##    Open Browser  https://the-internet.herokuapp.com/windows  chrome
##    Wait Until Element Is Visible  tag:h3  timeout=5
##    Click Element  css:[href="/windows/new"]
##    ${handles}=  Get Window Handles
##    Switch Window   ${handles}[0]
##    Element Text Should Be  tag:h3  Opening a new window  timeout=5
##    Switch Window  ${handles}[1]
##    Element Text Should Be  tag:h3  New Window  timeout=5
##    Set Selenium Speed    5
##    Execute Javascript    window.location.reload(true);
##    Close Browser
##
##*** Keywords ***
#*** Settings ***
#Library  SeleniumLibrary
#Library    Collections
#
#*** Variables ***
#${BROWSER}  chrome
#${URL}      https://www.google.com/search?client=firefox-b-d&q=what+is+udemy
#
#*** Test Cases ***
#Example
#    Open Browser        ${URL}      ${BROWSER}
#    Maximize Browser Window
#    Wait Until Element Is Visible    xpath://span[text()="Next"]
#    Click "Next" button until the last page
#
#*** Keywords ***
# Click "Next" button until the last page
#    FOR  ${counter}  IN  RANGE  (0, 100)
#    # Replace "Next" with the actual text or id of the button on your page
#
#    # Replace "End of pages" with the actual text that indicates the last page
#        ${text}=  Get Text  xpath=//span[text()='Next']
#        Element Should Contain    ${text}
#        Click Element  xpath=//span[text()="Next"]
##        Run Keyword And Return Status  Run Keyword If  '${text}'!='Next'
#        Exit For Loop
#    END
##    Sleep       5
##    # End of loop
##
##    Close Browser
#
#${current_page}    Set Variable    1
#:FOR    ${i}    IN    RANGE    100
#\    Click Element    xpath=//button[text()='Next']
#\    ${new_page}    Get Text    xpath=//span[@class='current-page']
#\    Run Keyword If    '${new_page}' == '${current_page}'    Exit For Loop
#\    ${current_page}    Set Variable    '${new_page}'
    e