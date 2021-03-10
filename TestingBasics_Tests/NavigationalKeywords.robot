# How to Handle Browser Windows

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BrowserC}           Chrome
${URL}               http://www.google.com/
${ChromeDriverPath}  C:/WebDrivers/chromedriver.exe

*** Test Cases ***
NavigationTest
    #[Arguments]     ${ChromeDriverPath} ${BrowserC}
    create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    go to    ${URL}
    maximize browser window
    ${loc}=  get location
    log to console  ${loc}

    sleep  3


    go to    http://www.bing.com/
    ${loc}=  get location
    log to console  ${loc}

    sleep  3

    go back
    ${loc}=  get location
    log to console  ${loc}

    close browser