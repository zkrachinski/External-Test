*** Settings ***
Documentation    Suite description
Library     Selenium2Library     30
Test Setup  open browser    ${Website}   chrome
Test Teardown   close browser

*** Variables ***
${Website}      http://ilabquality.staging.wpengine.com/

*** Test Cases ***
#Validate Blog page loads correctly
Blog - Blog Links
    [Tags]    Debug     Blog Tab
    Maximize Browser Window
    Wait For Page To Load
    Click Blog Link
    Assert Blog Page
    Click First Read More
    Assert Stress Testing Page
    Go Back
    Wait For Page To Load
    Click Second Read More
    Assert Cloud-Based Page
    Go Back
    Wait For Page To Load
    Click Third Read More
    Assert HPE Page
    Go Back
    Wait For Page To Load
    Click Load More Button
    Assert Load More Click





*** Keywords ***
Click Blog Link
    click link  http://ilabquality.staging.wpengine.com/resources/

Click Load More Button
    mouse down  css=.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-flat.vc_btn3-icon-left.vc_btn3-color-black
    click element  css=.vc_general.vc_btn3.vc_btn3-size-md.vc_btn3-shape-rounded.vc_btn3-style-flat.vc_btn3-icon-left.vc_btn3-color-black

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



Assert Blog Page
    wait until page contains element  css=.vc_grid-filter.vc_clearfix.vc_grid-filter-default.vc_grid-filter-size-md.vc_grid-filter-center.vc_grid-filter-color-grey
    page should contain link    http://ilabquality.staging.wpengine.com/the-ins-and-outs-of-stress-testing-web-mobile-applications-2/

Assert Load More Click
    page should contain  The Ultimate Mobile Performance Testing Checklist
    page should contain  Whose Job Is It? Performance Testing in an Agile Environment
    page should contain  Continuous Performance Validation:  What It Is and Why It Works
    page should contain  How Testing Teams Can Achieve End-to-End Traceability
    page should contain  The Ins and Outs of Stress Testing Web & Mobile Applications


Assert Stress Testing Page
    wait until page contains  The Ins and Outs of Stress Testing Web & Mobile Applications
    page should contain  Stress Testing vs. Load Testing

Assert Cloud-Based Page
    wait until page contains  The 5 Cloud-Based Load Testing Tool Must-Haves
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post

Assert HPE Page
    wait until page contains  What Should The Software Testing Industry Watch For as the HPE–Micro Focus Merger Plays Out?
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post

Assert Synthetic User Management Page
    wait until page contains  What Is Synthetic User Monitoring? How Does It Help?
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post

Assert HP Enterprise Sale Page
    wait until page contains  Why Worry About HP Enterprise Sale When We Have Made Switching from HP Easy?
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post

Assert Traceability Page
    wait until page contains  How Testing Teams Can Achieve End-to-End Traceability
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post

Assert QA Manager Guide Page
    wait until page contains  A QA Manager’s Guide to Reducing Project Cost with API Virtualization
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post

Assert Streaming Media Page
    wait until page contains  Testing Streaming Media: It’s Not Just for Netflix Anymore
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post

Assert Web App Perf Problems Page
    wait until page contains  The 10 Most Common Web App Performance Problems
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post

Assert Perf Checklist Page
    wait until page contains  The Ultimate Mobile Performance Testing Checklist
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post

Assert Agile Environ Page
    wait until page contains  Whose Job Is It? Performance Testing in an Agile Environment
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post

Assert Perf Validation Page
    wait until page contains  Continuous Performance Validation:  What It Is and Why It Works
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post

Assert Testing Teams Page
    wait until page contains  How Testing Teams Can Achieve End-to-End Traceability
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post

Assert Technology Trends Page
    wait until page contains  Top 10 Strategic Technology Trends for 2016
    page should contain image  css=.attachment-creatify-single-post.size-creatify-single-post







Wait For Page To Load
    set selenium implicit wait  30





