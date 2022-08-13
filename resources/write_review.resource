*** Settings ***
Resource          ../page_objects/login_page.resource
Resource          ../page_objects/menu_page.resource
Resource          ../page_objects/write_review_page.resource

*** Keywords ***
I put mouse over image "${IMG}"
    Mouse Over                              ${IMG}

I click on image "${IMG}"
    Wait Until Element Is Visible           ${IMG}
    Click Element                           ${IMG}

I click on 'write a review'
    Wait Until Element Is Visible           ${WRITE_REVIEW_BOX}
    Click Element                           ${WRITE_REVIEW_BOX}

I fill form with '${INFO1}' and '${INFO2}'
    Wait Until Element is Visible                       ${REVIEW_TITLE_FIELD}     
    Wait Until Element is Visible                       ${REVIEW_COMMENT_FIELD}
    Input Text       ${REVIEW_TITLE_FIELD}              ${INFO1}
    Input Password   ${REVIEW_COMMENT_FIELD}            ${INFO2} 

I submit form 
    Wait Until Element Is Visible           ${REVIEW_SEND_BUTTON}
    Click Element                           ${REVIEW_SEND_BUTTON}

I should see a successful review message
    [Arguments]                          ${SUCCESS_MESSAGE}
    Log                                  ${SUCCESS_MESSAGE}
    Wait Until Page Contains             ${SUCCESS_MESSAGE}       timeout=10