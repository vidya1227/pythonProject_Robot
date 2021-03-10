*** Settings ***
Library  SeleniumLibrary
Resource   ../Resources/Login_Resources.robot
Suite Setup     OnStart
Suite Teardown  OnFinish
Test Template   InvalidLogin

*** Test Cases ***         sUsername                 sPassword
Right user empty pass      admin@yourstore.com       ${EMPTY}
Right user wrong pass      admin@yourstore.com       xyz
Wrong user right pass      adm@yourstore.com         admin
Wrong user empty pass      adm@yourstore.com         ${EMPTY}
Wrong user wrong pass      adm@yourstore.com         xyz

*** Keywords ***
InvalidLogin
    [Arguments]  ${sUsername}    ${sPassword}
    InputUsername   ${sUsername}
    InputPassword   ${sPassword}
    ClickLoginButton
    ErrorMessageShouldBeVisible



