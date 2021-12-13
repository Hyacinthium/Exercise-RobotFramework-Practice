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
    Input Text    user-name    problem_user
    # input password
    Input Pass    ${VALID PASSWORD}
    # click login button
    Submit Credentials
    # should be open in products page
    Page Should Contain Image    xpath://*[@id="item_4_img_link"]/img    src="/static/media/sl-404.168b1cce.jpg"
    # close browser
    [Teardown]    Close Browser