*** Settings ***
Library      SeleniumLibrary
Library      OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path    C:\\LT6\\driver
    Open Browser     browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.db4free.net/
    Click Element    partial link=phpMyAdmin
    Switch Window    phpMyAdmin
    Input Text    id=input_username    admin
    Input Password    id=input_password    qwerty
    Click Element    id=input_go
    Element Should Contain    xpath=(//div[@role='alert'])[3]    Access denied for user