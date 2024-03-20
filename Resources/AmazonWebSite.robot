*** Settings ***
Resource    ./PO/MainPage.robot
Resource    ./PO/NavBar.robot
Resource    ./PO/SignIn.robot

Library     String


*** Keywords ***
Go To Main Page
    MainPage.Navigate To

Go To Logging Page
    NavBar.Go To Sign In
    SignIn.Verify Page Loaded

Fill In Incorrect Email
    ${WRONG_EMAIL} =  Generate Random String  8  [NUMBERS]
    SignIn.FillInEmail    email=${WRONG_EMAIL}
    SignIn.Click Continue Button

Is Error Msg Box Visible
    SignIn.Verify Error Msg Box
