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
    Wait For Logo To Load
    Hover Over Training
    Click Training Link
    Assert Training Page
    Wait For Page Load
    Click Testing Link
    Assert Testing Page
    Fill Out Form


Training Course Tab
    [Tags]    Debug   Training  Training Course
    Maximize Browser Window
    Wait For Logo To Load
    Hover Over Training
    Click Training Link
    Assert Training Page






*** Keywords ***
Click Training Link
    click link  http://ilabquality.staging.wpengine.com/training/

Click Testing Link
    wait until page contains element  css=.vc_single_image-img.attachment-full
    click element  css=.vc_custom_heading.vc_custom_1468248915075>a


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


Wait For Logo To Load
    wait until page contains element  css=.site-logo>a>img

Wait For Page Load
    set selenium implicit wait  30

Wait For Training Page To Load
    wait until page contains    mailto:training@ilabquality.com
    wait until page contains element  css=.vc_single_image-img.attachment-full

Move to Form
    mouse down  css=.wpcf7-form-control.wpcf7-text.wpcf7-validates-as-required

Fill Out Form
    input text  name=first-name  Test
    input text  name=last-name  Tester
    input text  name=company  iLAB
    input text  name=your-email  test@test.com
    input text  name=phone  555-555-5555
    input text  name=street  123 Elm Street
    input text  name=city  Indianapolis
    input text  name=state  IN
    input text  name=country  United States




