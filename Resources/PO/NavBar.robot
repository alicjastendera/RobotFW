*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Keywords ***
Go To Sign In
    SeleniumLibrary.Click Element    nav-link-accountList
    