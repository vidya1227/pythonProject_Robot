*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources.robot

*** Variables ***
${BrowserC}           Chrome
${URL}               https://www.countries-ofthe-world.com/flags-of-the-world.html
${ChromeDriverPath}  C:/WebDrivers/chromedriver.exe

*** Test Cases ***
UserKeywords
    ${PageTitle}=  launchBrowser1   ${URL}  ${BrowserC}
    log to console  ${PageTitle}
    log     ${PageTitle}
    sleep   5
    #execute javascript  window.scrollTo(0,1500)
    #scroll element into view    xpath://td[contains(text(),'India')]

    #scroll till bottom of the page
    execute javascript  window.scrollTo(0,document.body.scrollHeight)       # end of the page
    sleep   6
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)           # Starting of the page


