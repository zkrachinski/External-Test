*** Settings ***
Documentation    Suite description
Library     Selenium2Library     30
Test Setup  open browser    ${Website}   chrome
Test Teardown   close browser

*** Variables ***
${Website}      http://ilabquality.staging.wpengine.com/

*** Test Cases ***
#Validate Blog page loads correctly
Blog Tab
    [Tags]    Debug     Blog Tab
    Maximize Browser Window
    Wait For Page To Load
    Click Blog Link
    Assert Blog Page



*** Keywords ***
Click Blog Link
    click link  http://ilabquality.staging.wpengine.com/resources/

Assert Blog Page
    page should contain link    http://ilabquality.staging.wpengine.com/the-ins-and-outs-of-stress-testing-web-mobile-applications-2/

Wait For Page To Load
    wait until page contains element  css=.site-logo>a>img





