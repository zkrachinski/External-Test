*** Settings ***
Documentation    Tests the Industries Tab and Industries dropdown tab menu
Library     Selenium2Library    30
Test Setup  open browser    ${Website}   chrome
Test Teardown   close browser

*** Variables ***
${Website}      http://ilabquality.staging.wpengine.com/

*** Test Cases ***
Consulting Services Page - Read More Links
    [Tags]    Debug  Consulting Services Page
    maximize browser window
    wait for main page to load
    hover over services
    click consulting services tab
    wait for consulting services page to load
    click first read more
    assert stress testing page
    go back
    wait for consulting services page to load
    click second read more
    assert cloud-based page
    go back
    wait for consulting services page to load
    click third read more
    assert hpe page
    go back
    wait for consulting services page to load
    click case study link
    assert case study page


Consulting Services Page - Contact Form
    maximize browser window
    wait for main page to load
    hover over services
    click consulting services tab
    wait for consulting services page to load
    move to form
    fill out form

*** Keywords ***
Hover Over Services
    mouse over  css=#menu-item-1233>a

Move to Form
    mouse down  css=#sf_first_name

Fill Out Form
    input text  css=#sf_first_name  Test
    input text  css=#sf_last_name  Tester
    input text  css=#sf_company  iLAB
    input text  css=#sf_email  test@test.com
    input text  css=#sf_phone  555-555-5555


Wait for Main Page to Load
    wait until page contains element  css=.site-logo>a>img

Wait for Consulting Services Page to Load
    wait until page contains  Consulting Services: You Hold the Compass
    wait until page contains element  css=.vc_gitem-link.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-flat.vc_btn3-color-juicy-pink

Click Consulting Services Tab
    click element  css=#menu-item-1992>a

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
    click link  /services/consulting-services/case-study-consulting-services/
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