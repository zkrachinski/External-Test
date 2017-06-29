*** Settings ***
Documentation    Suite description
Library     Selenium2Library     30
Test Setup  open browser    ${Website}   chrome
Test Teardown   close browser

*** Variables ***
${Website}      http://ilabquality.staging.wpengine.com/

*** Test Cases ***
#Validate Contact page loads correctly
Contact Tab
    [Tags]    Debug  Contact Tab
    Maximize Browser Window
    Wait For Page To Load
    Click Contact Link
    Assert Contact Page




*** Keywords ***
Click Contact Link
    click link  http://ilabquality.staging.wpengine.com/contact/

Assert Contact Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain link    mailto:info.sa@ilabquality.com
    page should contain element  css=.wpb_wrapper>p
    page should contain element  css=.wpb_map_wraper

Wait For Page To Load
    wait until page contains element  css=.site-logo>a>img







