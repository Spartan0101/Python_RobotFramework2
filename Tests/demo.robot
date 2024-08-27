*** Settings ***
Documentation    Login Sauce Labs
Library          SeleniumLibrary
*** Test Cases ***
Test case 1
    [Documentation]          Login to Sauce Labs
    [Tags]                   Smoke

    log                      Starting the test case.
    Open Browser Test Sauce
    Enter Login Details

Test case 2
    [Documentation]          After Login to Sauce Labs
    [Tags]                   Smoke
    log                      Starting the test case.
    Click Login Buttton
    After Login Check
# User define keywords
*** Keywords ***
Open Browser Test Sauce
    Log     Open Browser
    Set selenium speed      .2s
    Set selenium timeout     10s
    open Browser             https://www.saucedemo.com/     chrome     options=add_argument("disable-search-engine-choice-screen")
    page should contain      Swag Labs
Enter Login Details
    Log     Enter Username and Password
    input text               id=user-name       standard_user
    input text               id=password        secret_sauce
Click Login Buttton
    Log     Login button click
    click button             id=login-button
    page should contain      Swag Labs
After Login Check
    Log     After Login Check
    page should contain      Swag Labs