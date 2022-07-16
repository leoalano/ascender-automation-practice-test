*** Variables ***
${URL}             http://www.automationpractice.com   
${ERROR_MESSAGE}   xpath://p[contains(.,'There is 1 error')]
${BROWSER}         browser=chrome 
${SIGN_IN}         xpath://a[@class='login']
${PASSWORD_INPUT}  xpath://input[@type='password']
${EMAIL_INPUT}     xpath://input[@id='email']
${SIGN_IN_BUTTON}  xpath://span[contains(.,'Sign in')]
${TEST_EMAIL}      xxx@xxxx.com
${TEST_PASSWORD}   123456 