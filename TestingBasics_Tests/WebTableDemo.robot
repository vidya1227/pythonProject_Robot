#How to Handle Web/HTML Table
#-------------
#1) Count Number of Rows in a Table
#2) Count Number of Columns in a Table
#3) Get data from Table
#4) Validations on Table

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BrowserC}           Chrome
${URL}               http://testautomationpractice.blogspot.com/
${ChromeDriverPath}  C:/WebDrivers/chromedriver.exe

*** Test Cases ***
Testing WebTable DemoTest
    #[Arguments]     ${ChromeDriverPath} ${BrowserC}
    create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    go to    ${URL}
    maximize browser window

    ${rows}=    get element count   xpath://table[@name='BookTable']/tbody/tr
    ${cols}=    get element count   xpath://table[@name='BookTable']/tbody/tr[1]/th

    log to console  ${rows}
    log to console  ${cols}

    ${data}=    get text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]

    log to console  ${data}


    table column should contain   xpath://table[@name='BookTable']  2   Author
    table row should contain   xpath://table[@name='BookTable']  4   Learn JS
    table cell should contain   xpath://table[@name='BookTable']  5     2   Mukesh
    table header should contain   xpath://table[@name='BookTable']  BookName



    close browser


