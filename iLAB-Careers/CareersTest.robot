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
    Click South Africa Button
    Assert South Africa Careers


*** Keywords ***
Click Careers Link
    click link  http://ilabquality.staging.wpengine.com/careers/

Click South Africa Button
    mouse down  css=.vc_general.vc_btn3.vc_btn3-size-lg.vc_btn3-shape-square.vc_btn3-style-gradient-custom.vc_btn3-block.vc_btn-gradient-btn-5952a810199ad
    click element  css=.vc_general.vc_btn3.vc_btn3-size-lg.vc_btn3-shape-square.vc_btn3-style-gradient-custom.vc_btn3-block.vc_btn-gradient-btn-5952a810199ad


Assert Careers Page
    wait until element is visible  css=.heading-dash.text-center
    page should contain  INNOVATION IN QUALITY & TESTING
    page should contain image    http://ilabquality.staging.wpengine.com/wp-content/uploads/2016/06/careers.png

Assert South Africa Careers
    wait until page contains  CURRENT OPENINGS
    page should contain     Get More From Your Career

Wait For Page To Load
    wait until page contains element  css=.site-logo>a>img











