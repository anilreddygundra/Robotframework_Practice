*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${browser}      chrome
${url}      https://demo.guru99.com/popup.php
${username}     **********@gmail.com
${siteurl}      https://demo.guru99.com/articles_popup.php

*** Test Cases ***
Login
    Set Selenium Implicit Wait    10
    Open_my_browser     ${url}    ${browser}
    Click_Button
    Verify page
    Switch Window    main
    Switch Window    new
    Emailid    ${username}
    Submit_button
    Valid_page
    #Btn
    Click_Button
    Sleep    5
    Verify Page
    Sleep    3
    close my browsers

Tabbed windows
    Open_my_browser    ${url}   ${browser}
    Click_Button
    Verify Page
    Select Window   title= Guru99 Bank Home Page
    Emailid    ${username}
    Submit_button
    Close My Browsers

