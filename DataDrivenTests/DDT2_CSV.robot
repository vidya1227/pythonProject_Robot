*** Settings ***
Library  SeleniumLibrary
Resource   ../Resources/Login_Resources.robot
Library    DataDriver     ../TestData/LoginTestData.csv

Suite Setup     OnStart
Suite Teardown  OnFinish
Test Template   InvalidLogin

*** Test Cases ***
CSVDemo using ${sUsername} and ${sPassword}


*** Keywords ***
InvalidLogin
    [Arguments]  ${sUsername}    ${sPassword}
    InputUsername    ${sUsername}
    InputPassword    ${sPassword}
    ClickLoginButton
    ErrorMessageShouldBeVisible