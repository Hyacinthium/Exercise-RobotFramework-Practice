*** Settings ***
Documentation    A test suite with a single test for valid login
...
...              This test follows the example using keywords from
...              the SeleniumLibrary
Resource         resources.robot

*** Test Cases ***
Locked Out Login
    Open Browser To Login Page
    # input username
    Input Username    ${LOCKED OUT USER}
    # input password
    Input Pass    ${VALID PASSWORD}
    # click login button
    Submit Credentials
    # Error message is "Epic sadface: Sorry, this user has been locked out."
    Element Text Should Be    xpath://*[@id="login_button_container"]/div/form/div[3]/h3    Epic sadface: Sorry, this user has been locked out.
    # close browser
    [Teardown]    Close Browser
