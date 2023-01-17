*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Mouse Operation
    Sleep    1
Right_click
    #Right click/ Open Context Menu
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    Maximize Browser Window
    Open Context Menu    xpath://span[.='right click me']
    Click Element    xpath://li[.="Copy"]
    Alert Should Be Present    clicked: copy
    ${a}=   Get Title
    Log To Console    ${a}
    Capture Page Screenshot    rightclick.png

    Sleep    3

    #double click
Double_click
    Go To    https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath://button[normalize-space()='Copy Text']
    ${b}=   Get Title
    Log To Console    ${b}
    Capture Page Screenshot    doubleclick.png
    Sleep    3
Drag_and_drop
    #Drag and drop
    Go To    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window
    Drag And Drop    id:box6    id:box106
    Drag And Drop    id:box2    id:box102
    Drag And Drop    id=box5    id:box105
    Drag And Drop    id:box3    id:box103
    Drag And Drop    id:box4    id:box104
    Drag And Drop    id:box7    id:box107
    Drag And Drop    id:box1    id:box101
    Capture Page Screenshot    dragdrop.png
    ${c}=   Get Title
    Log To Console    ${c}
    Sleep    5
    Close Browser