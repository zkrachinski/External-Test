*** Settings ***
Documentation    Suite description
Library     ExcelLibrary
Library     Selenium2Library     20

***Variables***


*** Test Cases ***
Test title
    [Tags]    DEBUG
    Provided precondition
    When action
    Then check expectations

*** Keywords ***
Provided precondition
    Setup system under test
