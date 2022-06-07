*** Settings ***
Library         SeleniumLibrary
Library         String

*** Variables ***
${browser}                 chrome
${url}                     http://practice.automationtesting.in/my-account/
${domain}                  @gmail.com

*** Test Cases ***
Register
    Open Browser              ${url}            ${browser}
    Maximize Browser Window
    #Click Link                xpath://a[text()='My Account']
    
    ${randomString} =         Generate Random String                11                 [LOWER]
    ${randomNumber} =         Generate Random String                5                  [NUMBERS]
    ${userName} =             Catenate     SEPARATOR=               ${randomString}${randomNumber}
    ${emailFake} =            Catenate     SEPARATOR=               ${randomString}${randomNumber}${domain}

    Input Text                xpath://input[@id='reg_email']        ${emailFake}   
    Input Text                xpath://input[@id='reg_password']     Maiyeuem@123
    Click Element             xpath://input[@name='register']
    
    Element Should Contain    //a[text()='Sign out']/..             Hello
    Element Text Should Be    //a[text()='Sign out']/../strong      ${userName}

*** Keywords ***
