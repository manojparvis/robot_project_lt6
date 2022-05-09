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
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=khanacademy test

    ${app_source}       Get Source
    Log   ${app_source}

    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']       50s
    Click Element    xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element      xpath=//*[@text='Sign in']      50s
    Click Element    xpath=//*[@text='Sign in']

    Wait Until Page Contains Element      xpath=//*[@text='Sign in']      50s
    Click Element    xpath=//*[@text='Sign in']

    Wait Until Page Contains Element      xpath=//*[@text='Enter an e-mail address or username']    50s
    Input Text     xpath=//*[@text='Enter an e-mail address or username']    hello@gmail.com

    Input Text     xpath=//*[contains@text='Password']   Mnbc@12
    Click Element    xpath=(//*[@text='Sign in']) [2]

    Element Text Should Be     xpath=//*[contains(@text,'issue')]   There was an issue signing in



