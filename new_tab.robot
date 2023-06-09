#*** Settings ***
#Library     RPA.Windows
#Library    SeleniumLibrary
#Library    OperatingSystem
#*** Tasks ***
#Automate desktop web browser
#    Open the browser
#    Open new private window
#    Focus address bar
#    Type Robot Framework URL and press enter
#    Open new tab
#    Type Robocorp docs URL and press enter
#    Search Within Page Search Input Field
#    Open Link To Library Documentation
#    Zoom in
#    Log    Done.
#    Element Should Contain
#    Page Should Contain
#
#*** Keywords ***
#Open the browser
#    Windows Search    Firefox
#    Control Window    name:"Mozilla Firefox"
#
#Open new private window
#    Send Keys    keys={Ctrl}({Shift}p)
#
#Focus address bar
#    Send Keys    keys={Ctrl}L
#
#Type Robocorp docs URL and press enter
#    Send Keys    keys=https://robocorp.com/docs{Enter}
#
#Open new tab
#    Send Keys    keys={Ctrl}T
#
#Type Robot Framework URL and press enter
#    Send Keys    keys=https://robotframework.org{Enter}
#
#Zoom in
#    Send Keys    keys={Ctrl}{Add}{Ctrl}{Add}{Ctrl}{Add}
#
#Search Within Page Search Input Field
#    Control Window    subname:"RPA Documentation"
#    Send Keys    locator=name:Search type:Edit depth:16    keys=rpa.windows{Enter}
#
#Open Link To Library Documentation
#    Sleep    2s
#    Control Window    subname:"RPA Documentation"
#    Click    name:"RPA.Windows" type:Hyperlink depth:16

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}       https://www.google.com
${browser}   chrome

*** Tasks ***
task1:
    Open Browser    ${url}      ${browser}
#    Sleep    200
    Alert Should Be Present     No thanks
    Input Text    name:q        virat kohli
    Sleep    3