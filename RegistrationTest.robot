*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot
Library    DateTime
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
    ${A1}=   Get Time   epoch
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
    Sleep    100
    ${B1}=  Get Time    epoch
    ${a}=   Evaluate    ${B1}-${A1}
#    ${elapsed}=   Get Time  min sec   ${a}
#    Log To Console    ${elapsed}
    Log To Console    ${a}
    close my browsers

Elapsed_Time
    ${t}    Get Time    epoch
    Sleep    5
    ${a}    Get Time    epoch
    ${time}     Evaluate    ${a}-${t}
    Log To Console    ${time}