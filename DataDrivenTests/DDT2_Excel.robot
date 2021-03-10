*** Settings ***
Library  SeleniumLibrary
Resource   ../Resources/Login_Resources.robot
#Library   DataDriver   ../TestData/LoginTestData.xls   sheet_name=Sheet1
Library    DataDriver    file=../TestData/LoginTestData.xlsx    sheet_name=Sheet1

Suite Setup     OnStart
Suite Teardown  OnFinish
Test Template   InvalidLogin

*** Test Cases ***
LoginTestWithExcel using ${sUsername}    ${sPassword}


*** Keywords ***
InvalidLogin
    [Arguments]  ${sUsername}    ${sPassword}
    InputUsername    ${sUsername}
    InputPassword    ${sPassword}
    ClickLoginButton
    ErrorMessageShouldBeVisible