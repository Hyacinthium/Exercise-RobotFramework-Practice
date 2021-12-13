*** Settings ***
Documentation    A test suite with a multiple test for validating sort functions
...
...              This test follows the example using keywords from
...              the SeleniumLibrary
Resource         resources.robot

*** Test Cases ***
Sort product name (A to Z)
    Open Browser To Login Page
    # input username
    Input Username    ${VALID USER}
    # input password
    Input Pass    ${VALID PASSWORD}
    # click login button
    Submit Credentials
    Mouse over       xpath://*[@id="header_container"]/div[2]/div[2]/span/select
    Click Element    xpath://*[@id="header_container"]/div[2]/div[2]/span/select
    Click Element    xpath://*[@id="header_container"]/div[2]/div[2]/span/select/option[1]
    Element Text Should Be    class:active_option    NAME (A TO Z)
    #[Teardown]    Close Browser

Sort product name (Z to A)
    #Open Browser To Login Page
    # input username
    #Input Username    ${VALID USER}
    # input password
    #Input Pass    ${VALID PASSWORD}
    # click login button
    #Submit Credentials
    Mouse over       xpath://*[@id="header_container"]/div[2]/div[2]/span/select
    Click Element    xpath://*[@id="header_container"]/div[2]/div[2]/span/select
    Click Element    xpath://*[@id="header_container"]/div[2]/div[2]/span/select/option[2]
    Element Text Should Be    class:active_option    NAME (Z TO A)
    #[Teardown]    Close Browser

Sort product price (low to high)
    #Open Browser To Login Page
    # input username
    #Input Username    ${VALID USER}
    # input password
    #Input Pass    ${VALID PASSWORD}
    # click login button
    #Submit Credentials
    Mouse over       xpath://*[@id="header_container"]/div[2]/div[2]/span/select
    Click Element    xpath://*[@id="header_container"]/div[2]/div[2]/span/select
    Click Element    xpath://*[@id="header_container"]/div[2]/div[2]/span/select/option[3]
    Element Text Should Be    class:active_option    PRICE (LOW TO HIGH)
    #[Teardown]    Close Browser

Sort product price (high to low)
    #Open Browser To Login Page
    # input username
    #Input Username    ${VALID USER}
    # input password
    #Input Pass    ${VALID PASSWORD}
    # click login button
    #Submit Credentials
    Mouse over       xpath://*[@id="header_container"]/div[2]/div[2]/span/select
    Click Element    xpath://*[@id="header_container"]/div[2]/div[2]/span/select
    Click Element    xpath://*[@id="header_container"]/div[2]/div[2]/span/select/option[4]
    Element Text Should Be    class:active_option    PRICE (HIGH TO LOW)
    [Teardown]    Close Browser