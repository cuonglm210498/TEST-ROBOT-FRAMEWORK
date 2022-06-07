*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${browser}     chrome
${url}         http://practice.automationtesting.in/my-account/

*** Test Cases ***   
Login
    Open Browser              ${url}    ${browser}
    Maximize Browser Window
    #Click Link                xpath://a[text()='My Account']
    Input Text                id:username                              lemanhcuong0498@gmail.com 
    Input Text                id:password                              lemanhcuong
    Click Element             xpath://input[@name='login']
    Element Should Contain    //a[text()='Sign out']/..                Hello
    Element Text Should Be    //a[text()='Sign out']/../strong         lemanhcuong0498

*** Keywords ***