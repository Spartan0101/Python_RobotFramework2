*** Settings ***
Library          SeleniumLibrary


*** Keywords ***
Enter Login Details
    Log                      Enter Username and Password
    input text               id=user-name       standard_user
    input text               id=password        secret_sauce
Click Login Buttton
    Log                      Login button click
    click button             id=login-button
    page should contain      Swag Labs
After Login Check
    Log                      After Login Check
    page should contain      Swag Labs
