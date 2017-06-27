*** Settings ***
Documentation    Suite description
Library     ExcelLibrary
Library     Selenium2Library     20
Test Setup  open browser    ${Website}   chrome
Test Teardown   close browser

*** Variables ***
${Website}      http://ilabquality.staging.wpengine.com/

*** Test Cases ***
#Validate Blog page loads correctly
Training Tab
    [Tags]    Debug     Training
    Maximize Browser Window
    Click Training Link
    Assert Training Page

Training Course Tab
    [Tags]    Debug   Training    Training Course
    Maximize Browser Window
    Hover Over Training
    Click Training Link
    Assert Training Page

Training Schedule Tab
    [Tags]    Debug   Training    Training Schedule
    Maximize Browser Window
    Hover Over Training
    Click Training Schedule Link



*** Keywords ***
Click Training Link
    click link  http://ilabquality.staging.wpengine.com/training/

Click Training Schedule Link
    click element  css=#menu-item-847>a


Hover Over Training
    mouse over  css=#menu-item-847>a

Assert Training Page
    page should contain     INTERNATIONALLY ACCREDITED TRAINING




