*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${SERVER}         localhost:3000/signin
${BROWSER}        Chrome
${DELAY}          0
${VALID USER}     testuser1
${VALID PASSWORD}    123456
${signin url}     http://localhost:3000/signup   

${LOGIN URL}      http://${SERVER}/
${WELCOME URL}    http://${SERVER}/welcome.html
${ERROR URL}      http://${SERVER}/error.html

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Login Page

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    username_field    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password_field    ${password}

Submit Credentials
    Click Button    login_button

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    Welcome Page

Open Browser To Signin Page
    Open Browser    ${signin url}  ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    # Login Page Should Be Open

Input newUsername
    [Arguments]     ${newusername_field}  ${newusername} 
    Input Text    ${newusername_field}    ${newusername}

Input newPassword
    [Arguments]   ${newPassword_field}  ${newPassword}
    Input Text    ${newPassword_field}    ${newPassword}    

Input newPasswordAgain
    [Arguments]    ${newPasswordAgain_field}   ${newPasswordAgain}
    Input Text    ${newPasswordAgain_field}    ${newPasswordAgain}    

Input emailName
    [Arguments]    ${emailName_field}   ${emailName}
    Input Text    ${emailName_field}    ${emailName}    

click signupButton 
    Click Element  class:span-primary
 