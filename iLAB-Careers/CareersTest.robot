*** Settings ***
Documentation    Suite description
Library     Selenium2Library     30
Test Setup  open browser    ${Website}   chrome
Test Teardown   close browser

*** Variables ***
${Website}      http://ilabquality.staging.wpengine.com/

*** Test Cases ***
#Validate Careers page loads correctly
Careers Tab
    [Tags]    Debug  Careers Tab
    Maximize Browser Window
    Wait For Page To Load
    Click Careers Link
    Assert Careers Page


*** Keywords ***
Click Careers Link
    click link  http://ilabquality.staging.wpengine.com/careers/


Assert Careers Page
    wait until element is visible  css=.heading-dash.text-center
    page should contain  INNOVATION IN QUALITY & TESTING
    page should contain image    http://ilabquality.staging.wpengine.com/wp-content/uploads/2016/06/careers.png


Wait For Page To Load
    wait until page contains element  css=.site-logo>a>img











