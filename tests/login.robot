*** Settings ***
Documentation    A test suite with a multiple test for validating login functions
...
...              This test follows the example using keywords from
...              the SeleniumLibrary
Resource         resources.robot

*** Test Cases ***
Successful user log in
    Open Browser To Login Page
    Input Username    ${VALID USER}
    Input Pass    ${VALID PASSWORD}
    Submit Credentials
    Product Page Should Be Open
    [Teardown]    Close Browser

Unsuccessful user log in by a locked out user
    Open Browser To Login Page
    Input Username    ${LOCKED OUT USER}
    Input Pass    ${VALID PASSWORD}
    Submit Credentials
    Element Text Should Be    xpath://*[@id="login_button_container"]/div/form/div[3]/h3    Epic sadface: Sorry, this user has been locked out.
    [Teardown]    Close Browser

Typed wrong password
    Open Browser To Login Page
    Input Username    ${VALID USER}
    Input Password    password    123456
    Submit Credentials
    Element Text Should Be    xpath://*[@id="login_button_container"]/div/form/div[3]/h3    Epic sadface: Username and password do not match any user in this service
    [Teardown]    Close Browser

Logged in as problem user and sees a broken inventory page
    Open Browser To Login Page
    Input Text    user-name    problem_user
    Input Pass    ${VALID PASSWORD}
    Submit Credentials
    Page Should Contain Image    xpath://*[@id="item_4_img_link"]/img    src="/static/media/sl-404.168b1cce.jpg"
    [Teardown]    Close Browser
