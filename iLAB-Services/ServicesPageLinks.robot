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
    assert cloud-based page
    go back
    wait for consulting services page to load
    click second read more
    assert requirements for user management page
    go back
    wait for consulting services page to load
    click third read more
    assert why worry hp enterprise page

Software Testing and Automation Page - Read More Links
    [Tags]    Debug  Software Testing and Automation Page Links
    maximize browser window
    wait for main page to load
    hover over services
    click software testing and automation tab
    wait for software testing and automation page to load
    click first read more
    assert cloud-based page
    go back
    wait for software testing and automation page to load
    click second read more
    assert hpe page
    go back
    wait for software testing and automation page to load
    click third read more
    assert qa manager guide page

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
    assert testing streaming media page
    go back
    wait for performance testing page to load
    click case study link
    assert performance testing case study page

Security Testing Page - Read More Links
    [Tags]    Debug  Security Testing Page Links
    maximize browser window
    wait for main page to load
    hover over services
    click security testing tab
    wait for security testing page to load
    click first read more
    assert requirements for user management page
    go back
    wait for security testing page to load
    click second read more
    assert how testing teams can achieve page

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
    assert requirements for user management page
    go back
    wait for mobile testing page to load
    click third read more
    assert the ultimate mobile performance page

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
    mouse down  css=#first_name

Fill Out Form
    input text  css=#first_name  Test
    input text  css=#last_name  Tester
    input text  css=#company  iLAB
    input text  css=#email  test@test.com
    input text  css=#country  555-555-5555


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
    click element  xpath=html/body/section/div[2]/div/div/div/div[5]/div/div/div/div/div/div/div[1]/div[1]/div[1]/div[2]/div/div/div/div[3]/a

Click Second Read More
    wait until page contains element  css=.vc_gitem-link.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-flat.vc_btn3-color-juicy-pink
    mouse down  css=.vc_gitem-link.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-flat.vc_btn3-color-juicy-pink
    click element  xpath=html/body/section/div[2]/div/div/div/div[5]/div/div/div/div/div/div/div[1]/div[2]/div[1]/div[2]/div/div/div/div[3]/a

Click Third Read More
    wait until page contains element  css=.vc_gitem-link.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-flat.vc_btn3-color-juicy-pink
    mouse down  css=.vc_gitem-link.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-flat.vc_btn3-color-juicy-pink
    click element  xpath=html/body/section/div[2]/div/div/div/div[5]/div/div/div/div/div/div/div[1]/div[3]/div[1]/div[2]/div/div/div/div[3]/a

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

Assert Requirements For User Management Page
    wait until page contains  6 Requirements For Synthetic User Management: Violate At Your Own Risk
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post
    page should contain  What Is Synthetic User Monitoring? How Does It Help?
    page should contain  6 Mandatory Requirements For Proper Synthetic User Monitoring

Assert Why Worry HP Enterprise Page
    wait until page contains  Why Worry About HP Enterprise Sale When We Have Made Switching from HP Easy?
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post

Assert QA Manager Guide Page
    wait until page contains  A QA Manager’s Guide to Reducing Project Cost with API Virtualization
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post
    page should contain  Luckily, today teams are able to setup virtual APIs through more lightweight virtualization services, like ServiceV.
    page should contain  How does it work?
    page should contain  How does API virtualization reduce project cost?

Assert Testing Streaming Media Page
    wait until page contains  Testing Streaming Media: It’s Not Just for Netflix Anymore
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post
    page should contain  Video Streaming Is Experiencing Explosive Growth
    page should contain  Tips for Top Video Streaming Performance

Assert How Testing Teams Can Achieve Page
    wait until page contains  How Testing Teams Can Achieve End-to-End Traceability
    page should contain image  .attachment-creatify-single-post.size-creatify-single-post
    page should contain  Why Traceability
    page should contain  Making traceability a partnership
    page should contain  Kanban board
    page should contain  Mind Maps

Assert The Ultimate Mobile Performance Page
    wait until page contains  The Ultimate Mobile Performance Testing Checklist
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post
    page should contain  Don’t Skimp on Mobile Performance Testing

Assert One Journey Page
    wait until page contains  One Journey, Two Distinct Experiences
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post
    page should contain link  http://blogging.avnet.com/weblog/avnetvoices/2016/04/16/one-journey-two-distinct-experiences/

Assert Performance Testing Case Study Page
    wait until page contains  iLAB Understands Performance Testing
    page should contain  The Opportunity
    page should contain  The iLAB Solution