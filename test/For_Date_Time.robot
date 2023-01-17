*** Settings ***
Library    DateTime

*** Variables ***
${Date_pattern}     ^(0?[1-9]|1\d|2\d|3[0-1]\/(0?[1-9]|1[0-2]\/(19|20)\d{2}$
${date}     ^(%b)\(0?[1-9]|1\d|2\d|3[0-1]\[,*]\(19|20)\d{2}$
*** Test Cases ***
step1: How to get the current time and date
    ${current}  Get Current Date    result_format=%d/%m/%Y %H:%M:%S
    Log To Console    \nCUrrent Time and Date ${current}

step2: How to get Date from the current Date to next date
    [Documentation]    Increment 1 day means 1 day ahead. you can modify higher than the given value.
    ${next_date}    Get Current Date    increment=7 days    result_format=%d/%m/%Y %H:%M:%S
    Log To Console    \nNext Date ${next_date}

step3: How to get current Time to next time
    [Documentation]    same on step 2. But this example is focusing on time. Let's try to create also the current time toi compare.
    ${current_hour}     Get Current Date    result_format=%d/%m/%Y %H:%M:%S
    ${next_hour}    Get Current Date    increment=1 hour    result_format=%d/%m/%Y %H:%M:%S
    Log To Console    \nNext Hour ${next_hour} and Current Hour ${current_hour}

step4: How to get months as local's abbreviated name
    [Documentation]    Let's try to convert the value of the month to string
    ${abb_month}    Get Current Date    result_format=%b
    Log To Console    \nAbbreviated month ${abb_month}

step5: How to get months as local's abbreviated name
    [Documentation]    This example is to display the full name of the month. Let's try to create a new one to compare.
    ${full_month}    Get Current Date    result_format=%B
    ${next_month}   Get Current Date    increment=31 days   result_format=%B
    Log To Console    \nFull month ${full_month}
    Log To Console    \nNext month is ${next_month}

step6: How to get the month as a zero-padded decimal
    ${padded}   Get Current Date    result_format=%m
    Log To Console    \nWith zero padded decimal ${padded}

example
    ${a}    Get Time    result_format=%H:%M:%S
    Log To Console    ${a}