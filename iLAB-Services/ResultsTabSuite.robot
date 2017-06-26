*** Settings ***
Documentation    Tests the Services Tab and Services dropdown tab menu
Library     Selenium2Library    30
Test Setup  open browser    ${Website}   chrome
Test Teardown   close browser

*** Variables ***
${Website}      http://ilabquality.staging.wpengine.com/

*** Test Cases ***
Services Tab
    [Tags]    DEBUG     Services
    maximize browser window
    wait for page to load
    click services tab
    assert services page

Consulting Services Tab
    [Tags]  Debug   Consulting Services
    maximize browser window
    wait for page to load
    click consulting services tab
    assert consulting services page

Software Testing and Automation Tab
    [Tags]  Debug   Software Testing and Automation
    maximize browser window
    wait for page to load
    click software testing and automation tab
    assert software testing and automation page

Performance Testing Tab
    [Tags]  Debug   Performance Testing
    maximize browser window
    wait for page to load
    click performance testing tab
    assert performance testing page

Security Testing Tab
    maximize browser window
    wait for page to load
    click security testing tab
    assert security testing page

Mobile Tab
    maximize browser window
    wait for page to load
    click mobile tab
    assert security testing page

*** Keywords ***
Wait for Page to Load
    wait until element is visible  css=#menu-item-388>a

Click Services Tab
    click element  css=#menu-item-1233>a

Click Consulting Services Tab
    click element  css=#menu-item-1992>a

Click Software Testing and Automation Tab
    click element  css=#menu-item-1991>a

Click Performance Testing Tab
    click element  css=#menu-item-1989>a

Click Security Testing Tab
    click element  css=#menu-item-2055>a

Click Mobile Tab
    click element  css=#menu-item-1990>a

Assert Services Page
    wait until element is visible   css=.vc_single_image-img.attachment-full
    page should contain  Essential Services for Modern Industries
    page should contain image  css=.vc_single_image-img.attachment-thumbnail

Assert Consulting Services Page
    wait until element is visible  css=.fa.fa-check-circle
    page should contain  Consulting Services: You Hold the Compass
    page should contain image  css=.vc_single_image-img.attachment-full

Assert Software Testing and Automation Page
    wait until element is visible  css=.wpb_wrapper>h3
    page should contain  Software Testing: Foresight, Not Hindsight
    page should contain image  css=.fa.fa-check-circle

Assert Performance Testing Page
    wait until element is visible   css=.wpb_wrapper>h3
    page should contain  PERFORMANCE TESTING CASE STUDY
    page should contain image  css=.fa.fa-check-circle

Assert Security Testing Page
    wait until element is visible   .fa.fa-check-circle
    page should contain  Security Testing: Know Your Enemy, Know Yourself
    page should contain image  css=.vc_single_image-img.attachment-full

Assert Mobile Page
    wait until element is visible  .fa.fa-check-circle
    page should contain  CONTACT FORM TITLE
    page should contain image  .vc_single_image-img.attachment-full


