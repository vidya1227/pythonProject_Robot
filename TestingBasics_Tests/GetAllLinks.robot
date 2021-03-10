*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BrowserC}           Chrome
${URL}               http://demo.guru99.com/test/newtours/
${ChromeDriverPath}  C:/WebDrivers/chromedriver.exe

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    #[Arguments]     ${ChromeDriverPath} ${BrowserC}
    create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    go to    ${URL}
    maximize browser window

#    ${AllLinksCount}=   get element count   xpath://a
#
#    log to console    ${AllLinksCount}
#
#    @{LinkItems}    create list
#
#    : FOR   ${i}    IN RANGE    1   ${AllLinksCount}
#    \    ${linkText}=  get text     xpath:(//a)[${i}]
#    \    log to console  ${linkText}

    Wait Until Element is Visible     xpath://a

    # Count number of links on page
    ${AllLinksCount}=    get element count    xpath://a

    # Log the count of links
    log to console    ${AllLinksCount}

    # Create a list to store the link texts
    @{LinkItems}    Create List

    # Loop through all links and store links value that has length more than 1 character
    : FOR    ${i}    IN RANGE    1    ${AllLinksCount}
    \    log to console    ${i}
    \    ${lintext}=    Get Text    xpath:(//a)[${i}]
    \    log to console    ${lintext}


    close browser

