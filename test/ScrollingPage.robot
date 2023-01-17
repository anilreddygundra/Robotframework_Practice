*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Scrolling Test
    Set Selenium Speed    2

    Open Browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    Maximize Browser Window
    Execute Javascript    window.scrollTo(0,500)
    Scroll Element Into View    xpath://img[@alt='Flag of India']
    Execute Javascript    window.scrollTo(0,document.body.scrollHieght)     #End of the scroll
    Capture Page Screenshot    jhdcbnm.png
    Execute Javascript    window.scrollTo(0,-document.body.scrollHieght)
    Capture Page Screenshot    hdbhb.png
    Sleep    3
    Close Browser