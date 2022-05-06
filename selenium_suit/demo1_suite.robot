*** Settings ***
Library      SeleniumLibrary
Library      OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path    C:\\LT6\\driver
    Open Browser    url=https://www.facebook.com/    browser=chrome
    Input Text    id=email     abc@gmail.com
    Input Password    id=pass    ABCD
    Click Element    name=login