How To Handle Input Box in Robot Framework
-------------------
Visibility status
Enabled status
Input value
Clearing value
Verify Title Of the page


*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BrowserC}           Chrome
${URL}               http://demo.nopcommerce.com/
${ChromeDriverPath}  C:/WebDrivers/chromedriver.exe

*** Test Cases ***
LoginTest
    #[Arguments]     ${ChromeDriverPath} ${BrowserC}
    create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    go to    ${URL}
    maximize browser window
    title should be  nopCommerce demo store
    click link   xpath://a[@class='ico-login']
    ${"email_txt"}  set variable  id:Email

    #element should be visible   ${"email_txt"}
    #element should be enabled   ${"email_txt"}
    element should not be visible   ${"email_txt"}


    input text  ${"email_txt"}  JohnDavid@gmail.com
    sleep   5
    clear element text   ${"email_txt"}
    sleep   5
    close browser
