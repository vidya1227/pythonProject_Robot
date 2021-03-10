#1) How to Handle Tabbed Windows
#2) How to Handle Browser Windows

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BrowserC}           Chrome
${URL}               http://demo.automationtesting.in/Windows.html
${ChromeDriverPath}  C:/WebDrivers/chromedriver.exe

*** Test Cases ***
Testing SwitchWindow
    #[Arguments]     ${ChromeDriverPath} ${BrowserC}
    create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    go to    ${URL}
    maximize browser window

    click element   xpath://*[@id='Tabbed']/a/button
    Switch window    title=SeleniumHQ Browser Automation
    #Switch Window   url=https://www.selenium.dev/               #Matches by window's current URL
    click element   xpath://a[contains(text(),'Downloads')]


    sleep   2
    close all browsers



