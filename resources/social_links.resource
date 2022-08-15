*** Settings ***
Resource    ../page_objects/social_links_page.resource

*** Keywords ***
I click on the facebook icon
    Click Element                      ${FACEBOOK_ICON} 

I verifid the facebook page will be displayed
    Page Should Contain                Selenium

I click on the Twitter icon
    Click Element                      ${TWITTER_ICON}

I verifid the Twitter page will be displayed
    Page Should Contain                Selenium

I click on the Youtube icon
    Click Element                      ${YOUTUBE_ICON}

I verifid the Youtube page will be displayed
    Page Should Contain                Selenium

I click on the G+ icon
    Click Element                      ${G+_ICON}

I verifid the G+ page will be displayed
    Title Should Be                My Store