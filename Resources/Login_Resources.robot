*** Settings ***
Library     SeleniumLibrary

*** Variables ***
#${Login_URL}     http://demo.nopcommerce.com/
${Login_URL}     https://demo.nopcommerce.com/login?returnUrl=%2F
${BrowserC}      Chrome
${ChromeDriverPath}  C:/WebDrivers/chromedriver.exe

*** Keywords ***
OnStart
    #[Arguments]  ${appURL}  ${BrowserC}  ${ChromeDriverPath}
    create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    maximize browser window
    go to    ${Login_URL}


OnFinish
    close all browsers

#NavigateToLoginPage
#    #[Arguments]   ${Login_URL}
#    go to    ${Login_URL}
#    ${title}=  get title
#    sleep  3
#    click element  xpath://a[contains(text(),'Log in')]
#    [Return]   ${title}

InputUsername
    [Arguments]   ${sUsername}
    input text  id:Email    ${sUsername}

InputPassword
    [Arguments]   ${sPassword}
    input text  id:Password    ${sPassword}

ClickLoginButton
    click element  xpath://input[@class='button-1 login-button']

ClickLogoutlink
    click link  Logout

ErrorMessageShouldBeVisible
    page should contain  Login was unsuccessful

DashboardPageShouldBeVisible
    page should contain  Dashboard




