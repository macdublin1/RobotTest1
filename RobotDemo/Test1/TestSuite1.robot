*** Settings ***
Library    SeleniumLibrary    

Suite Setup    Log    Test Suit setup
Suite Teardown    Log    Test Suit Teardown
Test Setup    Log    Test Setup
Test Teardown    Log    Test Teardown

Default Tags    Full-Test

*** Test Cases ***
MyFirstTest
    Log   Hello World.....
    
FirstSeleniumTest
    
    Open Browser    https://google.ie    chrome
    Set Browser Implicit Wait    2
    
    Input Text    name=q    Temple
    Press Keys    name=q    ENTER
    Sleep     2
    
    Close Browser
    Log    1st Test Completed    
    

SecondSeleniumTest
    [Documentation]    This is a login test
    Open Browser    ${URL}    chrome
    Set Browser Implicit Wait    3
    
    Input Text    id=txtUsername    ${CREDENTIALS}[0]
    Input Text    id=txtPassword    ${LOGINDATA}[password]
    Click Button    name=Submit
    Click Element    id=welcome
    Click Element    link=Logout    
    
    Sleep     2
    
    Close Browser
    Log    2nd Test Completed   
    Log    This test was executed by %{username} on %{os}
    
ThirdTest
    [Documentation]    This is a login test
    Open Browser    ${URL}    chrome
    Set Browser Implicit Wait    5
    
    LoginKW
    
    Click Element    id=welcome
    Click Element    link=Logout    
    
    Sleep     2
    
    Close Browser
    Log    3rd Test Completed  
    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINDATA}    username=Admin    password=admin123


*** Keywords ***
LoginKW
    Input Text    id=txtUsername    ${CREDENTIALS}[0]
    Input Text    id=txtPassword    ${LOGINDATA}[password]
    Click Button    name=Submit
    

 
   
    