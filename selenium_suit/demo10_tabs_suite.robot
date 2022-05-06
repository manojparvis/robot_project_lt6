** Settings ***
Library      SeleniumLibrary
Library      OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path    C:\\LT6\\driver
    Open Browser     browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://smallpdf.com/pdf-to-word
    Click Element    xpath=//span[text()='Got it']
    Choose File    xpath=//input[@type='file']    C:\\Users\\MANOJ\\Downloads\\Andries_P._Engelbrecht_Computational_IntelligencBookZZ.org.pdf
