*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/signinkeywords.robot

*** Variables ***
${url}      https://demo.guru99.com/test/newtours/
${browser}      chrome

*** Test Cases ***
Tc1
    ${pagetitle}=   LaunchBrowser   ${url}      ${browser}
    Log To Console    ${pagetitle}
    Log    ${pagetitle}
    Input Text    name:userName     Mercury
    Input Text    name:password     mercury
    Sleep    3
    Close Browser

#This Keywords section updated some other directory(
#*** Keywords ***
#LaunchBrowser
#    [Arguments]    ${siteurl}   ${sitebrowser}
#    Open Browser    ${siteurl}   ${sitebrowser}
#    Maximize Browser Window
#    ${title}=   Get Title
#    [RETURN]    ${title}