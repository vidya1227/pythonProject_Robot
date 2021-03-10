*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BrowserC}           Chrome
${URLAlerts}               http://testautomationpractice.blogspot.com/
${ChromeDriverPath}  C:/WebDrivers/chromedriver.exe

*** Test Cases ***
Sample Test
    #[Arguments]     ${ChromeDriverPath} ${BrowserC}
    create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    go to    ${URLAlerts}
    maximize browser window


