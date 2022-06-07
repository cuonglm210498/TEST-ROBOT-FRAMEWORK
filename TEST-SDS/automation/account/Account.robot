*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${browser}     chrome
${url}         http://practice.automationtesting.in/my-account/

*** Test Cases ***   
Update Account Details
    Open Browser                  ${url}    ${browser}
    Maximize Browser Window
    
    Click Link                    xpath://a[.='My Account']
    
    Input Text                    id:username                                lemanhcuong0498@gmail.com 
    Input Text                    id:password                                lemanhcuong
    Click Element                 xpath://input[@name='login' ]
    
    Click Link                    xpath://a[.='Account Details']
    Input Text                    xpath://input[@id='account_first_name']    Le
    Input Text                    xpath://input[@id='account_last_name']     Cuong
    Click Element                 xpath://input[@name='save_account_details']
    Element Text Should Be        xpath://div[text()='Account details changed successfully.']    Account details changed successfully.

*** Keywords ***