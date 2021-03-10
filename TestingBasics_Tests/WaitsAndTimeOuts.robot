#Speed *** test cases ***
#selenium speed
#selenium Timeout
#Implicit wait
#sleep

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BrowserC}           Chrome
${URL}               http://demowebshop.tricentis.com/register
${ChromeDriverPath}  C:/WebDrivers/chromedriver.exe

*** Test Cases ***
RegTest
    #[Arguments]     ${ChromeDriverPath} ${BrowserC}

#    ${speed}=   get selenium speed
#    log to console  ${speed}

    create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    go to    ${URL}
    maximize browser window

    #sleep    5
    #each and every statement take of the script take 3 sec to eceute in selenium speed time
    #set selenium speed    2

#    ${time}=   get selenium timeout
#    log to console  ${time}
#
#    set selenium timeout    10 seconds              #Only applicable for specified condition
#    wait until page contains    Register             # defaultly it ll wait till 5 secs
#

    ${implicitTime}=   get selenium timeout
    log to console  ${implicitTime}

    set selenium implicit wait  10 seconds

    ${implicitTime}=   get selenium timeout
    log to console  ${implicitTime}

    select radio button     Gender  M
    #set selenium implicit wait  10 seconds
    input text      name:FirstName1      vidya
    input text      name:LastName      shri
    input text      name:Email      vidya@gmail.com
    input text      name:Password      vidya123
    input text      name:ConfirmPassword      vidya123

#    ${time}=   get selenium timeout
#    log to console  ${time}

#    ${speed}=   get selenium speed
#    log to console  ${speed}
