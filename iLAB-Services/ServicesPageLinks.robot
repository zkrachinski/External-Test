*** Settings ***
Documentation    Tests the Industries Tab and Industries dropdown tab menu
Library     Selenium2Library    30
Test Setup  open browser    ${Website}   chrome
Test Teardown   close browser

*** Variables ***
${Website}      http://ilabquality.staging.wpengine.com/

*** Test Cases ***
Consulting Services Page - Read More Links
    [Tags]    Debug  Consulting Services Page Links
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

Software Testing and Automation Page - Read More Links
    [Tags]    Debug  Software Testing and Automation Page Links
    maximize browser window
    wait for main page to load
    hover over services
    click software testing and automation tab
    wait for software testing and automation page to load
    click first read more
    assert stress testing page
    go back
    wait for software testing and automation page to load
    click second read more
    assert cloud-based page
    go back
    wait for software testing and automation page to load
    click third read more
    assert hpe page
    go back
    wait for software testing and automation page to load
    click case study link
    assert case study page

Performance Testing Page - Read More Links
    [Tags]    Debug  Performance Testing Page Links
    maximize browser window
    wait for main page to load
    hover over services
    click performance testing tab
    wait for performance testing page to load
    click first read more
    assert stress testing page
    go back
    wait for performance testing page to load
    click second read more
    assert cloud-based page
    go back
    wait for performance testing page to load
    click third read more
    assert hpe page
    go back
    wait for performance testing page to load
    click case study link
    assert case study page

Security Testing Page - Read More Links
    [Tags]    Debug  Security Testing Page Links
    maximize browser window
    wait for main page to load
    hover over services
    click security testing tab
    wait for security testing page to load
    click first read more
    assert stress testing page
    go back
    wait for security testing page to load
    click second read more
    assert cloud-based page
    go back
    wait for security testing page to load
    click third read more
    assert hpe page
    go back
    wait for security testing page to load
    click case study link
    assert case study page

Mobile Testing Page - Read More Links
    [Tags]    Debug  Mobile Page Links
    maximize browser window
    wait for main page to load
    hover over services
    click mobile tab
    wait for mobile testing page to load
    click first read more
    assert stress testing page
    go back
    wait for mobile testing page to load
    click second read more
    assert cloud-based page
    go back
    wait for mobile testing page to load
    click third read more
    assert hpe page
    go back
    wait for mobile testing page to load
    click case study link
    assert case study page

Consulting Services Page - Contact Form
    [Tags]  Debug  Contact Form  Consulting Services Page
    maximize browser window
    wait for main page to load
    hover over services
    click consulting services tab
    wait for consulting services page to load
    move to form
    fill out form

Software Testing and Automation Page - Contact Form
    [Tags]  Debug  Contact Form  Software Testing and Automation Page
    maximize browser window
    wait for main page to load
    hover over services
    click software testing and automation tab
    wait for software testing and automation page to load
    move to form
    fill out form

Performance Testing Page - Contact Form
    [Tags]  Debug  Contact Form  Performance Testing Page
    maximize browser window
    wait for main page to load
    hover over services
    click performance testing tab
    wait for performance testing page to load
    move to form
    fill out form

Security Testing Page - Contact Form
    [Tags]  Debug  Contact Form  Security Testing Page
    maximize browser window
    wait for main page to load
    hover over services
    click security testing tab
    wait for security testing page to load
    move to form
    fill out form

Mobile Page - Contact Form
    [Tags]  Debug  Contact Form  Mobile Page
    maximize browser window
    wait for main page to load
    hover over services
    click mobile tab
    wait for mobile testing page to load
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

Wait for Software Testing and Automation Page to Load
    wait until page contains  Software Testing: Foresight, Not Hindsight
    wait until page contains element  css=.vc_gitem-link.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-flat.vc_btn3-color-juicy-pink

Wait for Performance Testing Page to Load
    wait until page contains  Performance Testing: Build Rugged Software
    wait until page contains element  css=.vc_single_image-img.attachment-full

Wait for Security Testing Page to Load
    wait until page contains  Security Testing: Know Your Enemy, Know Yourself
    wait until page contains element  css=.vc_single_image-img.attachment-full

Wait For Mobile Testing Page to Load
    wait until page contains  Mobile Testing: Ensure Cross-Platform Excellence
    page should contain element  css=.vc_single_image-img.attachment-full

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

Click First Read More
    wait until page contains element  css=.vc_gitem-link.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-flat.vc_btn3-color-juicy-pink
    mouse down  css=.vc_gitem-link.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-flat.vc_btn3-color-juicy-pink
    click link  http://ilabquality.staging.wpengine.com/the-ins-and-outs-of-stress-testing-web-mobile-applications-2/

Click Second Read More
    wait until page contains element  css=.vc_gitem-link.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-flat.vc_btn3-color-juicy-pink
    mouse down  css=.vc_gitem-link.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-flat.vc_btn3-color-juicy-pink
    click link  http://ilabquality.staging.wpengine.com/the-5-cloud-based-load-testing-tool-must-haves-2/

Click Third Read More
    wait until page contains element  css=.vc_gitem-link.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-flat.vc_btn3-color-juicy-pink
    mouse down  css=.vc_gitem-link.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-flat.vc_btn3-color-juicy-pink
    click link  http://ilabquality.staging.wpengine.com/what-should-the-software-testing-industry-watch-for-as-the-hpe-micro-focus-merger-plays-out/

Click Case Study Link
    wait until page contains element  css=.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-outline-custom
    mouse down  css=.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-outline-custom
    click element  css=.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-outline-custom

Assert Stress Testing Page
    wait until page contains  The Ins and Outs of Stress Testing Web & Mobile Applications
    page should contain  Stress Testing vs. Load Testing
    page should contain  When to conduct stress tests
    page should contain  Benefits of stress testing

Assert Cloud-Based Page
    wait until page contains  The 5 Cloud-Based Load Testing Tool Must-Haves
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post
    page should contain  Selecting a Cloud-Based Load Testing Tool
    page should contain  1. Integration With Cloud Platforms
    page should contain  2. Ability to Conduct Realistic Tests


Assert HPE Page
    wait until page contains  What Should The Software Testing Industry Watch For as the HPE–Micro Focus Merger Plays Out?
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post
    page should contain  Balance Between Cost Consolidation and Active Product Development
    page should contain  The Case of Overlapping Assets

Assert Case Study Page
    wait until page contains  Case Study Title
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain  Sub-Header