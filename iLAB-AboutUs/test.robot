*** Settings ***
Documentation    Tests the About Us tab and the About Us dropdown tab menu
Library     Selenium2Library     20
Test Setup  open browser    ${Website}   firefox
Test Teardown   close browser

*** Variables ***
${Website}      http://ilabquality.staging.wpengine.com/

*** Test Cases ***
About Us Tab
    [Tags]    Debug     About Us
    maximize browser window
    wait for page to load
    click about us
    Assert About Us Page

The iLab Story Tab
    [Tags]  Debug   About Us    The iLAB Story
    maximize browser window
    wait for page to load
    hover over about us
    click the ilab story
    Assert About Us Page

Our Process Tab
    [Tags]  Debug   About Us    Our Process
    maximize browser window
    wait for page to load
    hover over about us
    click our process
    assert our process page

Enagagement Models Tab
    [Tags]  Debug   About Us    Engagement Models
    maximize browser window
    wait for page to load
    hover over about us
    click engagement models
    assert engagement models page

*** Keywords ***
Hover Over About Us
    mouse over  css=#menu-item-388>a

Click About Us
    click link  http://ilabquality.staging.wpengine.com/about-us/

Click The iLAB Story
    click element  css=#menu-item-848>a

Click Our Process
    click element  css=#menu-item-1288>a

Click Engagement Models
    click element  css=#menu-item-1412>a

Wait for Page to Load
    wait until element is visible  css=#menu-item-388>a

Assert About Us Page
    page should contain     INNOVATION IN QUALITY & TESTING

Assert Our Process Page
    page should contain     THE INDEPENDENT DIFFERENCE

Assert Engagement Models Page
    page should contain     ENGAGEMENT



