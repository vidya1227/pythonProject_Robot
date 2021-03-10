#1)User Defined Keyword without Arguments
#2)User Defined Keyword with Arguments
#3)User Defined Keyword with Arguments & Return value
#4)Resource Files

*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LaunchBrowser_Resources.robot

*** Variables ***
${BrowserC}           Chrome
${URL}               http://demo.guru99.com/test/newtours/
${ChromeDriverPath}  C:/WebDrivers/chromedriver.exe

*** Test Cases ***
UserKeywords
    ${PageTitle}=  launchBrowser1   ${URL}  ${BrowserC}
    log to console  ${PageTitle}
    log     ${PageTitle}
    input text  name:userName   mercury
    input text  name:password   mercury

    close browser


#*** keywords ***
##without arguments
#launchBrowser
#    [Arguments]  ${appURL}  ${appBrowser}
#    create Webdriver    ${appBrowser}    executable_path=${ChromeDriverPath}
#    go to    ${appURL}
#    maximize browser window
#
#launchBrowser1
#    [Arguments]  ${appURL}  ${appBrowser}
#    create Webdriver    ${appBrowser}    executable_path=${ChromeDriverPath}
#    go to    ${appURL}
#    maximize browser window
#    ${title}=  get title
#    [Return]   ${title}




