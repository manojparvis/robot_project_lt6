*** Settings ***
Library    OperatingSystem
*** Test Cases ***

TC1
   Create File      path=C:\\LT6\\manoj
   ${files}    List Files In Directory    path=C:\\LT6
   Log To Console    ${files}

TC2
   Remove File    path=C:\\LT6\\manoj