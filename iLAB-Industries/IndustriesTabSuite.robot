*** Settings ***
Documentation    Tests the Industries Tab and Industries dropdown tab menu
Library     Selenium2Library    30
Test Setup  open browser    ${Website}   chrome
Test Teardown   close browser

*** Variables ***
${Website}      http://ilabquality.staging.wpengine.com/

*** Test Cases ***
Industries Tab
    [Tags]    Debug  Industries Tab
    maximize browser window
    wait for page to load
    click industries tab
    assert industries page

Banking and Finance Tab
    [Tags]  Debug   Banking and Finance Tab
    maximize browser window
    wait for page to load
    hover over industries
    click banking and finance tab
    assert banking and finance page

Healthcare Tab
    [Tags]  Debug   Healthcare Tab
    maximize browser window
    wait for page to load
    hover over industries
    click healthcare tab
    assert healthcare page

Human Resources Tab
    [Tags]  Debug  Human Resources Tab
    maximize browser window
    wait for page to load
    hover over industries
    click human resources tab
    assert human resources page

Insurance Tab
    [Tags]  Debug  Insurance Tab
    maximize browser window
    wait for page to load
    hover over industries
    click insurance tab
    assert insurance page

Public Sector Tab
    [Tags]  Debug  Public Sector Tab
    maximize browser window
    wait for page to load
    hover over industries
    click public sector tab
    assert public sector page

Retail Tab
    [Tags]  Debug  Retail Tab
    maximize browser window
    wait for page to load
    hover over industries
    click retail tab
    assert retail page

Telecom Tab
    [Tags]  Debug  Telecom Tab
    maximize browser window
    wait for page to load
    hover over industries
    click telecom tab
    assert telecom page

Tourism and Gaming Tab
    [Tags]  debug  Tourism and Gaming Tab
    maximize browser window
    wait for page to load
    hover over industries
    click tourism and gaming tab
    assert tourism and gaming page


*** Keywords ***
Hover Over Industries
    mouse over  css=#menu-item-838>a

Wait for Page to Load
    wait until page contains element  css=.site-logo>a>img

Click Industries Tab
    click element  css=#menu-item-838>a

Click Banking and Finance Tab
    click element  css=#menu-item-1999>a

Click Healthcare Tab
    click element  css=#menu-item-2000>a

Click Human Resources Tab
    click element  css=#menu-item-2000>a

Click Insurance Tab
    click element  css=#menu-item-2000>a

Click Public Sector Tab
    click element  css=#menu-item-1996>a

Click Retail Tab
    click element  css=#menu-item-1995>a

Click Telecom Tab
    click element  css=#menu-item-1994>a

Click Tourism and Gaming Tab
    click element  css=#menu-item-1993>a

Assert Industries Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain  Lead Your Industry in Innovation and Quality
    page should contain element  css=.wpb_wrapper>p

Assert Banking and Finance Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain  Funding life on-the-go with safe, connective solutions
    page should contain element  css=.wpb_wrapper>p

Assert Healthcare Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain  Secure patient and physician support along the continuum of care
    page should contain element  css=.wpb_wrapper>p

Assert Human Resources Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain  Intuitive organization of all the messy human details
    page should contain element  css=.wpb_wrapper>p

Assert Insurance Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain  Reassuring communication during life’s major challenges
    page should contain element  css=.wpb_wrapper>p

Assert Public Sector Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain  Software solutions that improve efficiency and the community
    page should contain element  css=.wpb_wrapper>p

Assert Retail Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain  Promote customer loyalty and encourage habitual buying
    page should contain element  css=.wpb_wrapper>p

Assert Telecom Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain  High-speed, reliable, transparent service
    page should contain element  css=.wpb_wrapper>p

Assert Tourism and Gaming Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain  Immersive escapes and entertainment
    page should contain element  css=.wpb_wrapper>p