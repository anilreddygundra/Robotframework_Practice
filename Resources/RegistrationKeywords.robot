*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locatores.py

*** Keywords ***
open my browser
    [Arguments]    ${siteurl}   ${browser}
    Open Browser    ${siteurl}  ${browser}
    Maximize Browser Window

Click Registration link
    Click Element    ${link_reg}

Enter First Name
    [Arguments]    ${firstname}
    Input Text    ${txt_firstname}  ${firstname}

Enter Lastname
    [Arguments]    ${lastname}
    Input Text    ${txt_lastname}   ${lastname}

Enter Phone
    [Arguments]    ${phone}
    Input Text    ${txt_phone}  ${phone}

Enter Email
    [Arguments]    ${email}
    Input Text    ${txt_email}  ${email}

Enter address
    [Arguments]    ${addr}
    Input Text    ${txt_add}    ${addr}

Enter City
    [Arguments]    ${city}
    Input Text    ${txt_city}   ${city}

Enter State
    [Arguments]    ${state}
    Input Text    ${txt_state}  ${state}

Enter Pascode
    [Arguments]    ${pascode}
    Input Text    ${txt_pascode}    ${pascode}

Dropdown Country
    Select From List By Value    ${drp_country}     INDIA

Enter User Name
    [Arguments]    ${uname}
    Input Text    ${txt_uname}      ${uname}

Enter Password
    [Arguments]    ${pword}
    Input Text    ${txt_pword}      ${pword}

Enter Confirm Password
    [Arguments]    ${confirmpword}
    Input Text    ${txt_confirmpword}       ${confirmpword}

Submit Button
    Click Element    ${btn_submit}

Verify page
    Page Should Contain    Thank you for registering.

close my browsers
    Close Browser