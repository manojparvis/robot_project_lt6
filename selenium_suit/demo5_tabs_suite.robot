*** Settings ***
Library      SeleniumLibrary
Library      OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path    C:\\LT6\\driver
    Open Browser     browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.medibuddy.in/
    Click Element    id=wzrk-cancel
    Click Element    link=For Employer
    Switch Window    MediBuddy LaunchPad
    Input Text    id=getInTouchName    Manoj
    Input Text    id=getInTouchEmail    manoj14@gmail.com
    Input Text    id=getInTouchMobile   63833
    Input Text    id=getInTouchDesignation     Trainer
    Input Text    id=getInTouchEmpCount     40
    Click Element    xpath=//button[@class='btn-primary mt-10 w-full']
    Element Text Should Be    xpath=//div[@class='text-red-600 ml-2']    Mobile Number should be 10 digits




