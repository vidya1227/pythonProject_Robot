*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BrowserC}           Chrome
${URL}               https://www.matryxsoft.com/
${ChromeDriverPath}  C:/WebDrivers/chromedriver.exe

${employee}    VIDYA

*** Test Cases ***
Testing IFCondition in Robot framework
    #[Arguments]     ${ChromeDriverPath} ${BrowserC}
    create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    go to    ${URL}
    maximize browser window



    ${count} =  get element count   xpath://a
    Should Be True  ${count} > 2
    Log To Console	${count}

 	sleep 	5
    close browser



*** Test Cases ***

My First Test Case
    Run Keyword If    '${employee}'=='VIDYA'    Log To Console    I am in If Condition

