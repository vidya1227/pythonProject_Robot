#Resource Files

*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
launchBrowser
    [Arguments]  ${appURL}  ${BrowserC}
    create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    go to    ${URL}
    maximize browser window
    ${title}=  get title
    [Return]   ${title}