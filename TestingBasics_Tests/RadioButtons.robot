#How To Select Radio Buttons & Check Boxes
#How to Un-Select

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BrowserC}           Chrome
${URL}               http://www.practiceselenium.com/practice-form.html
${ChromeDriverPath}  C:/WebDrivers/chromedriver.exe

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    #[Arguments]     ${ChromeDriverPath} ${BrowserC}
    create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    go to    ${URL}
    maximize browser window

    #Selecting Radio Buttons
    select radio button  sex   Female
    select radio button  exp   5

    #Selecting Check boxes : pass name or id
    select checkbox  BlackTea
    select checkbox  RedTea
    sleep   5

    #UnSelecting Check boxes
    unselect checkbox   BlackTea

    #close browser