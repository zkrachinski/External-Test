*** Settings ***
Documentation    Suite description
Library     ExcelLibrary
Library     Selenium2Library     20
Test Setup  open browser    ${Website}   chrome
Test Teardown   close browser

*** Variables ***
${Website}      http://ilabquality.staging.wpengine.com/

*** Test Cases ***
#Validate Careers page loads correctly
Careers Tab
    [Tags]    Debug     Careers
    Maximize Browser Window
    Click Careers Link
    Assert Careers Page
    Click South Africa Button
    Assert South Africa Careers


*** Keywords ***
Click Careers Link
    click link  http://ilabquality.staging.wpengine.com/careers/

Click South Africa Button
    mouse down on link  /careers/south-africa/


Assert Careers Page
    page should contain image    http://ilabquality.staging.wpengine.com/wp-content/uploads/2016/06/careers.png

Assert South Africa Careers
    page should contain     Get More From Your Career









