*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
CaptureTest
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login      chrome
    Maximize Browser Window
    Input Text    name:username    Admin
    Input Text    xpath://input[@placeholder='Password']    admin123


    Set Selenium Implicit Wait    1min 30s
    Capture Element Screenshot    #app > div.orangehrm-login-layout > div > div.orangehrm-login-container > div > div.orangehrm-login-branding > img  C:\Users\Anil Kumar G-2780\PycharmProjects\Automation\logo.png
    Capture Page Screenshot    C:\Users\Anil Kumar G-2780\PycharmProjects\Automationcapture.png
    Close Browser

stackoverflow
    Open Browser    https://stackoverflow.com/questions/56838851/robot-command-not-found-if-installing-robotframework-with-pip-user      chrome
    Maximize Browser Window
    Capture Element Screenshot    xpath://a[.='Stack Overflow']     C:\Users\Anil Kumar G-2780\PycharmProjects\Automation\orange.png
    Close Browser

