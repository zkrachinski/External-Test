*** Settings ***
Library     Selenium2Library     30
Test Setup  open browser    ${Website}   chrome
Test Teardown   close browser

*** Variables ***
${Website}      http://ilabquality.staging.wpengine.com/

*** Test Cases ***
#Validate Training page link loads correctly
Training - Testing Link
    [Tags]    Debug   Training
    Maximize Browser Window
    Wait For Page To Load
    Hover Over Training
    Click Training Link
    Assert Training Page
    Click Testing Link
    Assert Testing Page


Training Course Tab
    [Tags]    Debug   Training  Training Course
    Maximize Browser Window
    Wait For Page To Load
    Hover Over Training
    Click Training Link
    Assert Training Page






*** Keywords ***
Click Training Link
    click link  http://ilabquality.staging.wpengine.com/training/

Click Testing Link
    wait until page contains element  css=.vc_single_image-img.attachment-full
    mouse down   xpath=html/body/section/div[2]/div/div/div/div[8]/div[1]/div/div/h3/a


Hover Over Training
    mouse over  css=#menu-item-847>a


Assert Training Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain link    mailto:training@ilabquality.com
    page should contain element  css=.wpb_wrapper>p

Assert Testing Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain  Download Overview

Assert Training Schedule
     location should contain  http://ilabquality.staging.wpengine.com/wp-content/uploads/2016/10/Training_Schedule_Template_Final.pdf


Wait For Page To Load
    wait until page contains element  css=.site-logo>a>img

Wait For Training Page To Load
    wait until page contains    mailto:training@ilabquality.com
    wait until page contains element  css=.vc_single_image-img.attachment-full

Wait For PDF To Load
    set selenium implicit wait  30




