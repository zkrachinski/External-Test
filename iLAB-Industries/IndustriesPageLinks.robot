*** Settings ***
Documentation    Tests the Industries Tab and Industries dropdown tab menu
Library     Selenium2Library    30
Test Setup  open browser    ${Website}   chrome
Test Teardown   close browser

*** Variables ***
${Website}      http://ilabquality.staging.wpengine.com/

*** Test Cases ***
Banking and Finance Page - Read More Links
    [Tags]    Debug  Banking and Finance Page Links
    maximize browser window
    wait for main page to load
    hover over industries
    click banking and finance tab
    wait for banking and finance page to load
    click first read more
    assert stress testing page
    go back
    wait for banking and finance page to load
    click second read more
    assert cloud-based page
    go back
    wait for banking and finance page to load
    click third read more
    assert hpe page
    go back
    wait for banking and finance page to load
    click case study link
    assert case study page

*** Keywords ***
Hover Over Industries
    mouse over  css=#menu-item-838>a

Wait for Main Page to Load
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

Wait for Banking and Finance Page to Load
    wait until page contains  Funding life on-the-go with safe, connective solutions
    wait until page contains element  css=.vc_single_image-img.attachment-full

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

Move to Form
    mouse down  css=#sf_first_name

Fill Out Form
    input text  css=#sf_first_name  Test
    input text  css=#sf_last_name  Tester
    input text  css=#sf_company  iLAB
    input text  css=#sf_email  test@test.com
    input text  css=#sf_phone  555-555-5555

Click First Read More
    mouse down  css=.vc_gitem-link.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-flat.vc_btn3-color-juicy-pink
    click link  http://ilabquality.staging.wpengine.com/the-ins-and-outs-of-stress-testing-web-mobile-applications-2/

Click Second Read More
    mouse down  css=.vc_gitem-link.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-flat.vc_btn3-color-juicy-pink
    click link  http://ilabquality.staging.wpengine.com/the-5-cloud-based-load-testing-tool-must-haves-2/

Click Third Read More
    mouse down  css=.vc_gitem-link.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-flat.vc_btn3-color-juicy-pink
    click link  http://ilabquality.staging.wpengine.com/what-should-the-software-testing-industry-watch-for-as-the-hpe-micro-focus-merger-plays-out/

Click Case Study Link
    mouse down  css=.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-outline-custom
    click element  css=.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-outline-custom

Assert Stress Testing Page
    wait until page contains  The Ins and Outs of Stress Testing Web & Mobile Applications
    page should contain  Stress Testing vs. Load Testing

Assert Cloud-Based Page
    wait until page contains  The 5 Cloud-Based Load Testing Tool Must-Haves
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post

Assert HPE Page
    wait until page contains  What Should The Software Testing Industry Watch For as the HPE–Micro Focus Merger Plays Out?
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post

Assert Case Study Page
    wait until page contains  Case Study Title
    page should contain image  css=.vc_single_image-img.attachment-full