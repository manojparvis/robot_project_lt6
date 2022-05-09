* Settings *
Library    AppiumLibrary
Test Teardown    Close Application

* Test Cases *
TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=manojparvis_zSVaI6
    ...     browserstack.key=M9dRwaLXVBvhP7qsDrPU
    ...     app=bs://ceb84225d81d45c772909507e03b07142356b640
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=lt6_project_signup
    ...     build=lt6_build
    ...     name=khanacademy test


    Set Appium Timeout    50s
    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']
    Click Element    xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//*[@content-desc='Settings']
    Click Element     xpath=//*[@content-desc='Settings']

    Wait Until Page Contains Element    xpath=//*[@text='Sign in']
    Click Element     xpath=//*[@text='Sign in']

    Wait Until Page Contains Element    xpath=//*[@text='Sign up with email']
    Click Element     xpath=//*[@text='Sign up with email']

    Wait Until Page Contains Element   xpath=//*[@text='First name']
    Input Text    xpath=//*[@text='First name']    manoj

     Wait Until Page Contains Element    xpath=//*[@text='Last name']
     Input Text    xpath=//*[@text='Last name']    kumar


