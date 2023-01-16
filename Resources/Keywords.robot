*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Login
    [Arguments]    ${uname}     ${password}
    log your super secret password is   ${password}!q
