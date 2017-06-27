*** Settings ***
Documentation    Tests the Services Tab and Services dropdown tab menu
Library     Selenium2Library    30
Test Setup  open browser    ${Website}   chrome
Test Teardown   close browser

*** Variables ***
${Website}      http://ilabquality.staging.wpengine.com/

*** Test Cases ***
Services Tab
    [Tags]    DEBUG     Services Tab
    maximize browser window
    wait for page to load
    click services tab
    assert services page

Consulting Services Tab
    [Tags]  Debug   Consulting Services Tab
    maximize browser window
    wait for page to load
    hover over services
    click consulting services tab
    assert consulting services page

Software Testing and Automation Tab
    [Tags]  Debug   Software Testing and Automation Tab
    maximize browser window
    wait for page to load
    hover over services
    click software testing and automation tab
    assert software testing and automation page

Performance Testing Tab
    [Tags]  Debug   Performance Testing Tab
    maximize browser window
    wait for page to load
    hover over services
    click performance testing tab
    assert performance testing page

Security Testing Tab
    [Tags]  Debug  Security Testing Tab
    maximize browser window
    wait for page to load
    hover over services
    click security testing tab
    assert security testing page

Mobile Tab
    [Tags]  Debug  Mobile Tab
    maximize browser window
    wait for page to load
    hover over services
    click mobile tab
    assert security testing page

*** Keywords ***
Hover Over Services
    mouse over  css=#menu-item-1233>a

Wait for Page to Load
    wait until page contains element  css=.site-logo>a>img

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
    wait until element is visible  css=.wpb_wrapper>h3
    page should contain  Consulting Services: You Hold the Compass
    page should contain image  css=.vc_single_image-img.attachment-full

Assert Software Testing and Automation Page
    wait until element is visible  css=.wpb_wrapper>h3
    page should contain  Software Testing: Foresight, Not Hindsight
    page should contain image  css=.vc_single_image-img.attachment-full

Assert Performance Testing Page
    wait until element is visible   css=.wpb_wrapper>h3
    page should contain  PERFORMANCE TESTING CASE STUDY
    page should contain image   css=.vc_single_image-img.attachment-full

Assert Security Testing Page
    wait until element is visible   css=.wpb_wrapper>h3
    page should contain  Security Testing: Know Your Enemy, Know Yourself
    page should contain image  css=.vc_single_image-img.attachment-full

Assert Mobile Page
    wait until element is visible  .fa.fa-check-circle
    page should contain  CONTACT FORM TITLE
    page should contain image  .vc_single_image-img.attachment-full


