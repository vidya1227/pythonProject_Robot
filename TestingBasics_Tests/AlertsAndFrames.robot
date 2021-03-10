#1) How to Handle Alerts
#2) How to Handle Frames

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BrowserC}           Chrome
${URLAlerts}               http://testautomationpractice.blogspot.com/
${URLFrames}               https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html
${ChromeDriverPath}  C:/WebDrivers/chromedriver.exe

*** Test Cases ***
Testing Alerts
    #[Arguments]     ${ChromeDriverPath} ${BrowserC}
    create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    go to    ${URLAlerts}
    maximize browser window

    click element   xpath://*[@id='HTML9']/div[1]/button      #open alert
    sleep   4
    #handle alert    accept
    #handle alert    dismiss
     #handle alert    Leave
    alert should be present     Press a button!

    close browser


*** Test Cases ***
Testing Frames
    #[Arguments]     ${ChromeDriverPath} ${BrowserC}
    create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    go to    ${URLFrames}
    maximize browser window

    select frame    packageListFrame        #id name xpath
    click link  org.openqa.selenium.cli
    unselect frame

    sleep   3

    select frame    packageFrame
    click link  CliCommand
    unselect frame

    sleep   3

    select frame    classFrame
    click link  Help
    unselect frame

    sleep   3

    select frame    classFrame
    click link  Index
    unselect frame


    sleep   3
    close browser




