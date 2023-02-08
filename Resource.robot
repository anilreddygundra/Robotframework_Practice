*** Settings ***
Documentation       Resource file for variables and Keywords
Library     SeleniumLibrary
Library     OperatingSystem

*** Variables ***
${siginButton}      id:signInBtn
${Error Message}        xpath://form[@id="login-form"]/child::div[1]
${invalid username}     sita@gmail.com
${invalid password}     siata
${valid username}       rahulshettyacademy
${valid password}       learning
${url}      https://rahulshettyacademy.com/loginpagePractise/
${browser}      chrome
${shpopage_check}       xpath://a[text()="Home"]

*** Keywords ***
Open The Browser
    Open Browser        ${url}       ${browser}