* Settings *
Library    AppiumLibrary

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

    Close Application