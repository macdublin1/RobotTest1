*** Settings ***
Library    SeleniumLibrary    

Suite Setup    Log    Test Suit setup
Suite Teardown    Log    Test Suit Teardown
Test Setup    Log    Test Setup
Test Teardown    Log    Test Teardown

Default Tags    Full

*** Test Cases ***
FirstTest
    [Tags]    Smoke
    
    Log   1st Test Completed.....
    
SecondTest
    Set Tags    Regression1
    Log   2nd Test Completed.....
    
ThirdTest
    Log   3rd Test Completed.....
    Set Tags    Regression2
    Remove Tags    Regression2

FourthTest
    [Tags]    Regression3
    Log   4th Test Completed.....

