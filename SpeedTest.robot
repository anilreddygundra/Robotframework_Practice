*** Settings ***
Library    SeleniumLibrary
Suite Setup    Speed Test Keyword
Library    WebdriverManager
*** Variables ***
${url}      https://www.speedtest.net/result/14502044220
${browser}      headlesschrome

*** Keywords ***
speed test keyword
    Open Browser    ${url}      ${browser}
    Set Selenium Implicit Wait    20
    Maximize Browser Window
    Sleep    1
    Page Should Contain    Speedtest by Ookla - The Global Broadband Speed Test
    Click Element    xpath://span[@class="start-text"]
    Sleep    10
    Page Should Contain Element    xpath://canvas[@class="download-fg-graph"]
    Capture Element Screenshot    xpath://div[contains(@class,'result-area-test')]

*** Test Cases ***
speed check
#    Driver
#    Driver.Chrome(Chromedrivermanager().install()
#    Speed Test Keyword
#    Open Browser    ${url}      ${browser}
#    Set Selenium Implicit Wait    20
#    Maximize Browser Window
#    Sleep    1
#    Page Should Contain    Speedtest by Ookla - The Global Broadband Speed Test
#    Click Element    xpath://span[@class="start-text"]
#    Sleep    100
#    Wait Until Page Contains Element    xpath://canvas[@class="download-fg-graph"]
#    Page Should Contain Element    xpath://canvas[@class="download-fg-graph"]
#
#    Capture Element Screenshot    xpath://div[contains(@class,'result-area-test')]
    Capture Element Screenshot    xpath://div[@class="gauge-speed-needle"]
    Sleep    1
#    Skip    For testing purpose
    Pass Execution If    a=${False}
    Log To Console    anil