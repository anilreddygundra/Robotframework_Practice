*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${browser}  chrome
${siteurl}  https://demo.guru99.com/test/newtours/index.php
${firstname}    Anil
${lastname}     Reddy
${phone}        222222222
${email}        aniksnws@gmail.com
${addr}     ahsvchsvadcvbz
${city}     Anantapur
${state}    Andhrapradesh
${pascode}  515154
${uname}    anilreddy
${pword}    *********
${confirmpword}     *********

*** Test Cases ***
Registration Form
    Set Selenium Implicit Wait    10
    open my browser     ${siteurl}      ${browser}
    Click Registration link
    Enter First Name    ${firstname}
    Enter Lastname    ${lastname}
    Enter Phone    ${phone}
    Enter Email    ${email}
    Enter Address    ${addr}
    Enter City    ${city}
    Enter State    ${state}
    Enter Pascode    ${pascode}
    Enter User Name    ${uname}
    Enter Password    ${pword}
    Enter Confirm Password    ${confirmpword}
    Submit Button
    Verify Page
    close my browsers