#2) How to Handle Browser Windows

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BrowserC}           Chrome
${URL}               http://www.google.com/
${ChromeDriverPath}  C:/WebDrivers/chromedriver.exe

*** Test Cases ***
Testing MultipleBrowser
    #[Arguments]     ${ChromeDriverPath} ${BrowserC}
    create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    go to    ${URL}
    maximize browser window

    create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    go to    http://www.bing.com/
    maximize browser window

    switch browser  1
    ${title1}=  get title
    log to console  ${title1}

    sleep  3

    switch browser  2
    ${title2}=  get title
    log to console  ${title2}

    sleep  3
    close all browsers


