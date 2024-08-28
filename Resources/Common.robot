*** Settings ***
Library                      SeleniumLibrary

*** Keywords ***
Open Browser Test Sauce
    Log                      Open Browser
    Set selenium speed      .2s
    Set selenium timeout     10s
    open Browser             https://www.saucedemo.com/     chrome     options=add_argument("disable-search-engine-choice-screen")
    page should contain      Swag Labs

End Web Test
    Log                      Closing browser
    close browser