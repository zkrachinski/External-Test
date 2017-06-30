*** Settings ***
Library     Selenium2Library     30
Test Setup  open browser    ${Website}   chrome
Test Teardown   close browser

*** Variables ***
${Website}      http://ilabquality.staging.wpengine.com/

*** Test Cases ***
#Validate Blog page loads correctly
Training Tab
    [Tags]    Debug   Training
    Maximize Browser Window
    Wait For Page To Load
    Click Training Link
    Assert Training Page

Training Course Tab
    [Tags]    Debug   Training  Training Course
    Maximize Browser Window
    Wait For Page To Load
    Hover Over Training
    Click Training Link
    Assert Training Page

Training Schedule Tab
    [Tags]    Debug   Training  Training Schedule
    Maximize Browser Window
    Wait For Page To Load
    Hover Over Training
    Click Training Schedule Link
    Assert Training Schedule



*** Keywords ***
Click Training Link
    click link  http://ilabquality.staging.wpengine.com/training/

Click Training Schedule Link
    click element  css=#menu-item-1641>a


Hover Over Training
    mouse over  css=#menu-item-847>a


Assert Training Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain link    mailto:training@ilabquality.com
    page should contain element  css=.wpb_wrapper>p

Assert Training Schedule
     location should contain  http://ilabquality.staging.wpengine.com/wp-content/uploads/2016/10/Training_Schedule_Template_Final.pdf


Wait For Page To Load
    wait until page contains element  css=.site-logo>a>img

Wait For PDF To Load
    set selenium implicit wait  30




