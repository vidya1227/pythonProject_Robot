*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BrowserC}           Chrome
${URL}               http://www.practiceselenium.com/practice-form.html
${ChromeDriverPath}  C:/WebDrivers/chromedriver.exe

*** Test Cases ***
Handling Dropdowns and Lists
    #[Arguments]     ${ChromeDriverPath} ${BrowserC}
    create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    go to    ${URL}
    maximize browser window

    select from list by label   continents  Asia
    sleep   5
    select from list by index   continents   5

    #select from by value    continents  value

    #List box
    select from list by label   selenium_commands   Switch Commands
    select from list by label   selenium_commands   Wait Commands
    sleep   5

    unselect from list by label   selenium_commands   Switch Commands



