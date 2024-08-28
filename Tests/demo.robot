*** Settings ***
Documentation    Login Sauce Labs
#Library          SeleniumLibrary
Resource         ../Resources/Saucedemo.robot
Resource         ../Resources/Common.robot
# Suit Setup    Insert testing data
Test Setup       Open Browser Test Sauce    # Run first
Test Teardown    End Web Test               # Run last
# Suit teardown    Cleanup testing data

*** Test Cases ***
Test case 1
    [Documentation]          Login to Sauce Labs
    [Tags]                   Smoke
    log                      Starting the test case.
    Saucedemo.Enter Login Details

Test case 2
    [Documentation]          After Login to Sauce Labs
    [Tags]                   Smoke
    log                      Starting the test case.
    Saucedemo.Click Login Buttton

Test case 3
    [Documentation]          End Web Test
    [Tags]                   Smoke
    Saucedemo.After Login Check
