#How to Close Single & Multiple Browsers in Robot Framework

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BrowserC}           Chrome
${URL1}               http://demowebshop.tricentis.com/register
${URL2}               http://demo.nopcommerce.com/
${ChromeDriverPath}  C:/WebDrivers/chromedriver.exe

*** Test Cases ***
RegTest
    #[Arguments]     ${ChromeDriverPath} ${BrowserC}
    create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    go to    ${URL1}
    maximize browser window


    create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    go to    ${URL2}
    maximize browser window


    #close browser
    close all browsers

