*** Settings ***
Library      SeleniumLibrary
Library      OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path    C:\\LT6\\driver
    Open Browser    url=https://www.goto.com/meeting/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    truste-consent-button
    Click Element    link=Try Free
    Input Text   id=first-name   manoj
    Input Text   id=last-name    kumar
    Input Text   id=login__email     manoj@gmail.com
    Input Text   id=contact-number     6383330500
    Select From List By Label    id=CompanySize        10 - 99
    Click Element    class=common-button__button
                       
                       
                       
                       
                       
