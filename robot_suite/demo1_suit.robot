*** Settings ***
Library    DateTime
*** Test Cases ***
TC1
   Log To Console    Sakthivel
   
TC2
   Log To Console    Hello  
   
TC3
   ${my_name}     Set Variable     manoj    
   Log To Console    ${my_name}
   Log     ${my_name}

TC4
   ${radius}     Set Variable     10
   ${output}     Evaluate     3.14${radius}*${radius}
   Log To Console    ${output}

TC5
   ${base}    Set Variable    25
   ${height}    Set Variable     1
   ${output}    Evaluate    1/2${base}*${height}
   Log To Console    ${output}

TC6
   ${base1}    Set Variable    25
   ${base2}    Set Variable     2.56
   ${height}    Set Variable     70
   ${output}    Evaluate     ((${base1}*${base2})/2)*${height}
   Log To Console    ${output}

TC7
   ${q}     Get Current Date
   Log To Console    ${q}