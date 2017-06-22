*** Settings ***
Documentation    Suite description
Library     ExcelLibrary
Library     Selenium2Library     20
Test Setup  open browser    ${Website}   firefox
Test Teardown   close browser

*** Variables ***
${Website}      http://ilabquality.staging.wpengine.com/

*** Test Cases ***
About Us Tab
    [Tags]    DEBUG     About Us
    maximize browser window
    wait for page to load
    click about us
    Assert About Us Page Is Correct

The iLab Story Tab
    wait for page to load
    hover over about us
    click the ilab story
    Assert About Us Page Is Correct

The Our Process Tab
    wait for page to load
    hover over about us
    click our process
    assert our process page is correct

*** Keywords ***
Hover Over About Us
    mouse over  css=#menu-item-388>a

Click About Us
    click link  http://ilabquality.staging.wpengine.com/about-us/

Click The iLAB Story
    click element  css=#menu-item-848>a

Click Our Process
    click element  css=#menu-item-1288>a

Wait for Page to Load
    wait until element is visible  css=#menu-item-388>a

Assert About Us Page Is Correct
    page should contain     INNOVATION IN QUALITY & TESTING

Assert Our Process Page Is Correct
    page should contain     THE INDEPENDENT DIFFERENCE



