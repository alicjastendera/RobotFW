*** Settings ***
Documentation    Placeholder
Resource        ../Resources/AmazonWebSite.robot
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
    AmazonWebSite.Go To Main Page
    AmazonWebSite.Go To Logging Page
    AmazonWebSite.Fill In Incorrect Email
    AmazonWebSite.Is Error Msg Box Visible
