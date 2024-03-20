*** Settings ***
Documentation    Placeholder
Resource        ../Resources/Common.robot

Test Setup       Begin Web Test
Test Teardown    End Web Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.amazon.pl/


*** Test Cases ***
Should not be able to log with wrong credentials
    [Documentation]    Placeholder
    [Tags]    Logging
    Log     Executing TC1
    Sleep    5
