*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BrowserC}           Chrome
${URL}               https://opensource-demo.orangehrmlive.com/
${ChromeDriverPath}  C:/WebDrivers/chromedriver.exe

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    #[Arguments]     ${ChromeDriverPath} ${BrowserC}
    create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    go to    ${URL}
    maximize browser window

    input text  id:txtUsername  Admin
    input text  id:txtPassword  admin123

    #capture element screenshot  xpath://*[@id='divLogo']/img    D:/LogoImage.png
    #capture page screenshot  D:/LginPage.png

    capture element screenshot  xpath://*[@id='divLogo']/img    Screenshot/LogoImage.png
    capture page screenshot  Screenshot/LginPage.png