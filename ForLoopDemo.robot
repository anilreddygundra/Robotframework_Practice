*** Test Cases ***
Forloop1
    FOR   ${i}  IN RANGE    1   10
        IF    ${i}==5:
            BREAK
        Log To Console    ${i}
    END
