*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Keywords ***
Fill In Email
    [Arguments]    ${email}
    SeleniumLibrary.Input Text    ap_email     ${email}


Click Continue Button
    SeleniumLibrary.Click Button    continue

Verify Page Loaded
    SeleniumLibrary.Wait Until Page Contains Element    authportal-center-section

Verify Error Msg Box
    SeleniumLibrary.Element Should Contain    auth-error-message-box    Nieprawidłowy numer telefonu
    