*** Settings ***
Documentation    Suite description
Library     Selenium2Library     30
Test Setup  open browser    ${Website}   chrome
Test Teardown   close browser

*** Variables ***
${Website}      http://ilabquality.staging.wpengine.com/

*** Test Cases ***
#Validate Careers page loads correctly and the location buttons
Careers Page - Location Buttons
    [Tags]    Debug  Careers Tab
    Maximize Browser Window
    Wait For Page To Load
    Click Careers Link
    Assert Careers Page
    Click South Africa Button
    Assert Location Careers
    Go Back
    Assert Careers Page
    Click North America Button
    Assert Location Careers
    Go Back
    Assert Careers Page
    Click Australia Button
    Assert Location Careers
    Go Back
    Assert Careers Page
    Click United Kingdom Button
    Assert Location Careers



*** Keywords ***
Click Careers Link
    click link  http://ilabquality.staging.wpengine.com/careers/

Click South Africa Button
    wait until page contains element  css=.vc_single_image-img.attachment-full
    mouse down  css=.vc_custom_heading
    mouse down  xpath=html/body/section/div[2]/div/div/div/div[3]/div[2]/div/div/div[3]/div[2]/div/div/div[3]/a
    click element  xpath=html/body/section/div[2]/div/div/div/div[3]/div[2]/div/div/div[3]/div[2]/div/div/div[3]/a

Click North America Button
    wait until page contains element  css=.vc_single_image-img.attachment-full
    mouse down  css=.vc_custom_heading
    mouse down  xpath=html/body/section/div[2]/div/div/div/div[3]/div[2]/div/div/div[3]/div[2]/div/div/div[4]/a
    click element  xpath=html/body/section/div[2]/div/div/div/div[3]/div[2]/div/div/div[3]/div[2]/div/div/div[4]/a

Click Australia Button
    wait until page contains element  css=.vc_single_image-img.attachment-full
    mouse down  css=.vc_custom_heading
    mouse down  xpath=html/body/section/div[2]/div/div/div/div[3]/div[2]/div/div/div[3]/div[2]/div/div/div[5]/a
    click element  xpath=html/body/section/div[2]/div/div/div/div[3]/div[2]/div/div/div[3]/div[2]/div/div/div[5]/a

Click United Kingdom Button
    wait until page contains element  css=.vc_single_image-img.attachment-full
    mouse down  css=.vc_custom_heading
    mouse down  xpath=html/body/section/div[2]/div/div/div/div[3]/div[2]/div/div/div[3]/div[2]/div/div/div[6]/a
    click element  xpath=html/body/section/div[2]/div/div/div/div[3]/div[2]/div/div/div[3]/div[2]/div/div/div[6]/a


Assert Careers Page
    wait until element is visible  css=.heading-dash.text-center
    page should contain  INNOVATION IN QUALITY & TESTING
    page should contain image    http://ilabquality.staging.wpengine.com/wp-content/uploads/2016/06/careers.png

Assert Location Careers
    wait until page contains  CURRENT OPENINGS
    page should contain     Get More From Your Career


Wait For Page To Load
    wait until page contains element  css=.site-logo>a>img











