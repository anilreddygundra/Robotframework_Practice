*** Settings ***
Library    SeleniumLibrary
Library    CryptoLibrary    variable_decryption=True
Variables    decode.py
Library     pybase64
#Library    b64

Library    String

*** Variables ***
${url}     https://accounts.google.com/
${browser}     Chrome
${encryptcode}     U05iITQ3NDUxSmFnYW5uYXRo
${decryptedcode}    b64decode   ${encryptcode}
*** Test Cases ***
Login test
    Open Browser    ${url}      ${browser}
    Input Text    xpath://input[@type='email']      *********@gmail.com
    Click Element    xpath://span[.='Next']
    Sleep    10
    Input Text    xpath://input[@type='password']       ${decryptedcode}
    Click Element    //span[.='Next']
    Sleep    3

    Log To Console    ${decryptedcode}
    ${a}    Decode Bytes To String    ${encryptcode}
    Log To Console    ${a}
