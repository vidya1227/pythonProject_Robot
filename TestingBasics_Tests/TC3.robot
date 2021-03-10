*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BrowserC}           Chrome
${BrowserF}           Firefox
${URL}               https://www.eayur.com/
${Username}          vidyaclk12@gmail.com
${Password}          Matryx@2020
${ChromeDriverPath}  C:/WebDrivers/chromedriver.exe
${FirefoxDriverPath}  C:/WebDrivers/geckodriver.exe

*** Test Cases ***
LoginTest
    #[Arguments]     ${FirefoxDriverPath} ${BrowserF}
    Create Webdriver    ${BrowserF}    executable_path=${FirefoxDriverPath}
    Go To    ${URL}
    Maximize Browser Window
    loginToApplication
    logoutFromApplication
    close browser


*** Keywords ***
loginToApplication
    Click Element   xpath://body/form[@id='payment_form']/div[4]/div[1]/nav[1]/div[8]/div[1]/ul[1]/li[1]/a[1]
    sleep   5s
    Click Element   xpath://input[@id='ContentPlaceHolder1_txt_email']
    Input Text  xpath://input[@id='ContentPlaceHolder1_txt_email']  ${Username}
    Click Element   xpath://input[@id='ContentPlaceHolder1_txt_password']
    Input Text  xpath://input[@id='ContentPlaceHolder1_txt_password']  ${password}
    sleep   5s
    Click Element   xpath://input[@id='ContentPlaceHolder1_btn_submit_login']
    sleep  5s
    Log  Login is successfully done!!!

logoutFromApplication
    Click Element   xpath://a[@id='LinkButton2']
    sleep   5s
    Log   logout is successfully done!!!