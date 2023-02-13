*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://demoqa.com/date-picker
${browser}      chrome

*** Test Cases ***
date
    Open Browser    ${url}      ${browser}
    Set Selenium Implicit Wait    20
    Maximize Browser Window
    Date-picker
    Execute Javascript    window.scroll(0,250)
    Next_month
    Click Element    //div[@class='react-datepicker__month']/div[6]/div[3]
    Sleep    2
    Date-picker
    Last_month
    Click Element   //div[@class='react-datepicker__month']/div[4]/div[1]
    Capture Element Screenshot    //div[@id="datePickerMonthYear"]
    Sleep    5

*** Keywords ***
date-picker
    Click Element    //input[@id="datePickerMonthYearInput"]
next_month
    Wait Until Element Is Visible    //div[contains(@class,"datepicker__month-container")]
    Click Element   //button[text()='Next Month']

last_month
    Wait Until Element Is Visible    //div[contains(@class,"datepicker__month-container")]
    Click Element    //button[text()='Previous Month']