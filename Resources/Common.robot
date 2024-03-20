*** Settings ***
# Resource    ./PO/MainPage.robot
# Resource    ./PO/NavBar.robot
# Resource    ./PO/SignIn.robot

Library     SeleniumLibrary


*** Keywords ***

Begin Web Test
    Open Browser    ${URL}    ${BROWSER} 

End Web Test
    Close All Browsers