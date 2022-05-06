*** Settings ***
Library      SeleniumLibrary
Library      OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path    C:\\LT6\\driver
    Open Browser    url=https://www.facebook.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    link=Create New Account
    Input Text   name=firstname   manoj
    Input Text   name=lastname    kumar
    Input Text   name=reg_email__     manoj@gmail.com
    Input Text   name=reg_email_confirmation__    manoj@gmail.com
    Input Text    id=password_step_input    Welcome123
    Select From List By Label    id=day     14
    Select From List By Label    id=month    Jan
    Select From List By Label    id=year     2001
    Click Element    xpath=//input[@value='-1']
    Click Element    name=websubmit


