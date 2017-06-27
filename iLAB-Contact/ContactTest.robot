*** Settings ***
Documentation    Suite description
Library     ExcelLibrary
Library     Selenium2Library     20
Test Setup  open browser    ${Website}   chrome
Test Teardown   close browser

*** Variables ***
${Website}      http://ilabquality.staging.wpengine.com/

*** Test Cases ***
#Validate Contact page loads correctly
Contact Tab
    [Tags]    Debug     Contact
    Maximize Browser Window
    Click Contact Link
    Assert Contact Page




*** Keywords ***
Click Contact Link
    click link  http://ilabquality.staging.wpengine.com/contact/

Assert Contact Page
    page should contain link    mailto:info.sa@ilabquality.com







