*** Settings ***
Documentation    A test suite with a single test for valid login
...
...              This test follows the example using keywords from
...              the SeleniumLibrary
Resource         resources.robot

*** Test Cases ***
Wrong Password
    Open Browser To Login Page
    # input username
    Input Username    ${VALID USER}
    # input password
    Input Password    password    123456
    # click login button
    Submit Credentials
    # should be open in products page
    Element Text Should Be    xpath://*[@id="login_button_container"]/div/form/div[3]/h3    Epic sadface: Username and password do not match any user in this service
    # close browser
    [Teardown]    Close Browser


