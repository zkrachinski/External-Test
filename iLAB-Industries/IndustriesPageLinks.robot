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
    assert banking and finance case study page

Healthcare Page - Read More Links
    [Tags]    Debug  Healthcare Page Links
    maximize browser window
    wait for main page to load
    hover over industries
    click healthcare tab
    wait for healthcare page to load
    click first read more
    assert stress testing page
    go back
    wait for healthcare page to load
    click second read more
    assert cloud-based page
    go back
    wait for healthcare page to load
    click third read more
    assert hpe page
    go back
    wait for healthcare page to load

Human Resources Page - Read More Links
    [Tags]    Debug  Human Resources Page Links
    maximize browser window
    wait for main page to load
    hover over industries
    click human resources tab
    wait for human resources page to load
    click first read more
    assert stress testing page
    go back
    wait for human resources page to load
    click second read more
    assert cloud-based page
    go back
    wait for human resources page to load
    click third read more
    assert hpe page
    go back
    wait for human resources page to load
    click case study link
    assert human resources case study page

Insurance Page - Read More Links
    [Tags]    Debug  Insurance Page Links
    maximize browser window
    wait for main page to load
    hover over industries
    click insurance tab
    wait for insurance page to load
    click first read more
    assert stress testing page
    go back
    wait for insurance page to load
    click second read more
    assert cloud-based page
    go back
    wait for insurance page to load
    click third read more
    assert hpe page
    go back
    wait for insurance page to load
    click case study link
    assert insurance case study page

Retail Page - Read More Links
    [Tags]    Debug  Retail Page Links
    maximize browser window
    wait for main page to load
    hover over industries
    click retail tab
    wait for retail page to load
    click first read more
    assert stress testing page
    go back
    wait for retail page to load
    click second read more
    assert cloud-based page
    go back
    wait for retail page to load
    click third read more
    assert hpe page

Public Sector Page - Read More Links
    [Tags]    Debug  Public Sector Page Links
    maximize browser window
    wait for main page to load
    hover over industries
    click public sector tab
    wait for public sector page to load
    click first read more


Telecom Page - Read More Links
    [Tags]    Debug  Telecom Page Links
    maximize browser window
    wait for main page to load
    hover over industries
    click telecom tab
    wait for telecom page to load
    click first read more
    assert stress testing page
    go back
    wait for telecom page to load
    click second read more
    assert cloud-based page
    go back
    wait for telecom page to load
    click third read more
    assert hpe page

Tourism and Gaming Page - Read More Links
    [Tags]    Debug  Tourism and Gaming Page Links
    maximize browser window
    wait for main page to load
    hover over industries
    click tourism and gaming tab
    wait for tourism and gaming page to load
    click first read more
    assert stress testing page
    go back
    wait for tourism and gaming page to load
    click second read more
    assert cloud-based page
    go back
    wait for tourism and gaming page to load
    click third read more
    assert hpe page

Banking and Financing Page - Contact Form
    [Tags]  Debug  Contact Form  Banking and Financing Page
    maximize browser window
    wait for main page to load
    hover over industries
    click banking and finance tab
    wait for banking and finance page to load
    move to form
    fill out form

Healthcare Page - Contact Form
    [Tags]  Debug  Contact Form  Healthcare Page
    maximize browser window
    wait for main page to load
    hover over industries
    click healthcare tab
    wait for healthcare page to load
    move to form
    fill out form

Human Resources Page - Contact Form
    [Tags]  Debug  Contact Form  Human Resources Page
    maximize browser window
    wait for main page to load
    hover over industries
    click human resources tab
    wait for human resources page to load
    move to form
    fill out form

Insurance Page - Contact Form
    [Tags]  Debug  Contact Form  Insurance Page
    maximize browser window
    wait for main page to load
    hover over industries
    click insurance tab
    wait for insurance page to load
    move to form
    fill out form

Public Sector Page - Contact Form
    [Tags]  Debug  Contact Form  Human Resources Page
    maximize browser window
    wait for main page to load
    hover over industries
    click public sector tab
    wait for public sector page to load
    move to form
    fill out form

Retail Page - Contact Form
    [Tags]  Debug  Contact Form  Retail Page
    maximize browser window
    wait for main page to load
    hover over industries
    click retail tab
    wait for retail page to load
    move to form
    fill out form

Telecom Page - Contact Form
    [Tags]  Debug  Contact Form  Telecom Page
    maximize browser window
    wait for main page to load
    hover over industries
    click telecom tab
    wait for telecom page to load
    move to form
    fill out form

Tourism and Gaming Page - Contact Form
    [Tags]  Debug  Contact Form  Human Resources Page
    maximize browser window
    wait for main page to load
    hover over industries
    click tourism and gaming tab
    wait for tourism and gaming page to load
    move to form
    fill out form

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
    click element  css=#menu-item-1998>a

Click Insurance Tab
    click element  css=#menu-item-1997>a

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

Wait for Healthcare Page to Load
    wait until page contains  Secure patient and physician support along the continuum of care
    wait until page contains element  css=.vc_single_image-img.attachment-full

Wait for Human Resources Page to Load
    wait until page contains  Intuitive organization of all the messy human details
    wait until page contains element  css=.vc_single_image-img.attachment-full

Wait for Insurance Page to Load
    wait until page contains  Reassuring communication during life’s major challenges
    wait until page contains element  css=.vc_single_image-img.attachment-full

Wait for Public Sector Page to Load
    wait until page contains  Software solutions that improve efficiency and the community
    wait until page contains element  css=.vc_single_image-img.attachment-full

Wait for Retail Page to Load
    wait until page contains  Promote customer loyalty and encourage habitual buying
    wait until page contains element  css=.vc_single_image-img.attachment-full

Wait for Telecom Page to Load
    wait until page contains  Making complex solutions simple and intuitive for customers
    wait until page contains element  css=.vc_single_image-img.attachment-full

Wait for Tourism and Gaming Page to Load
    wait until page contains  Immersive escapes and entertainment
    wait until page contains element  css=.vc_single_image-img.attachment-full

Assert Industries Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain  Lead Your Industry in Innovation and Quality
    page should contain element  css=.wpb_wrapper>p
    page should contain  MOST COMMON INDUSTRIES SERVED

Assert Banking and Finance Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain  Funding life on-the-go with safe, connective solutions
    page should contain element  css=.wpb_wrapper>p
    page should contain  BANKING AND FINANCE CASE STUDY

Assert Healthcare Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain  Secure patient and physician support along the continuum of care
    page should contain element  css=.wpb_wrapper>p
    page should contain  HEALTHCARE CASE STUDY

Assert Human Resources Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain  Intuitive organization of all the messy human details
    page should contain element  css=.wpb_wrapper>p
    page should contain  HUMAN RESOURCES CASE STUDY

Assert Insurance Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain  Reassuring communication during life’s major challenges
    page should contain element  css=.wpb_wrapper>p
    page should contain  INSURANCE CASE STUDY

Assert Public Sector Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain  Software solutions that improve efficiency and the community
    page should contain element  css=.wpb_wrapper>p
    page should contain  PUBLIC SECTOR CASE STUDY

Assert Retail Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain  Promote customer loyalty and encourage habitual buying
    page should contain element  css=.wpb_wrapper>p
    page should contain  RETAIL CASE STUDY

Assert Telecom Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain  High-speed, reliable, transparent service
    page should contain element  css=.wpb_wrapper>p
    page should contain  TELECOMMUNICATIONS CASE STUDY

Assert Tourism and Gaming Page
    page should contain image  css=.vc_single_image-img.attachment-full
    page should contain  Immersive escapes and entertainment
    page should contain element  css=.wpb_wrapper>p
    page should contain  TOURISM AND GAMING CASE STUDY

Move to Form
    mouse down  css=#first_name

Fill Out Form
    input text  css=#first_name  Test
    input text  css=#last_name  Tester
    input text  css=#company  iLAB
    input text  css=#email  test@test.com
    input text  css=#country  555-555-5555

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

Assert One Journey Page
    wait until page contains  One Journey, Two Distinct Experiences
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post
    page should contain link  http://blogging.avnet.com/weblog/avnetvoices/2016/04/16/one-journey-two-distinct-experiences/

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

Assert Banking and Finance Case Study Page
    wait until page contains  BANKING AND FINANCE
    page should contain  The Opportunit
    page should contain  The Risk
    page should contain  The iLAB Solution

Assert Human Resources Case Study Page
    wait until page contains  iLAB Understands Human Resources
    page should contain  The Opportunity
    page should contain  The Risk
    page should contain  The iLAB Solution

Assert Insurance Case Study Page
    wait until page contains  iLAB Understands Insurance
    page should contain  The Opportunity
    page should contain  The Risk
    page should contain  The iLAB Solution

