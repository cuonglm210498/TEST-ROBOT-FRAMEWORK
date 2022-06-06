*** Settings ***
Library         SeleniumLibrary
Library         String

*** Variables ***
${browser}                 chrome
${url}                     http://practice.automationtesting.in/

*** Test Cases ***
Register
    Open Browser              ${url}            ${browser}
    Maximize Browser Window
    Click Link                xpath://a[text()='My Account']
    
    ${randomString} =         Generate Random String                11                 [LOWER]
    ${randomNumber} =         Generate Random String                5                  [NUMBERS]
    ${emailFake} =            Catenate     SEPARATOR=               ${randomString}${randomNumber}@gmail.com

    Input Text                xpath://input[@id='reg_email']        ${emailFake}   
    Input Text                xpath://input[@id='reg_password']     Maiyeuem@123    
    Click Element             xpath://input[@name='register']

*** Keywords ***
