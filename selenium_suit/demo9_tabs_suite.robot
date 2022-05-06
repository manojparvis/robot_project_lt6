** Settings ***
Library      SeleniumLibrary
Library      OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path    C:\\LT6\\driver
    Open Browser     browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr
    Input Text    xpath=//input[@id='authUser']    admin
    Input Text    id=clearPass    pass
    Select From List By Label    name=languageChoice           English (Indian)
    Click Element    id=login-button
    Click Element    xpath=//div[text()='Messages']
    Select Frame    xpath=//iframe[@name='msg']
    Click Element     xpath=//a[text()='Add New']
    Select From List By Label    id=form_note_type   Pharmacy
    Select From List By Label    id=form_massage_status   New
    Select From List By Label    id=users         Jarvis,Fred
    Input Text    id=note    hello
    Click Element     id=cancel
    Unselect Frame
