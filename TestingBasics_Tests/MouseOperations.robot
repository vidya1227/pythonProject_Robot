*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BrowserC}           Chrome
${URL}               https://swisnl.github.io/jQuery-contextMenu/demo.html
${URL1}              http://testautomationpractice.blogspot.com/
${URL2}              http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
${ChromeDriverPath}  C:/WebDrivers/chromedriver.exe

*** Test Cases ***
MouseActions
    #[Arguments]     ${ChromeDriverPath} ${BrowserC}
    create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
#    go to    ${URL}
#    maximize browser window
#
#    #Right click action / open context
#    open context menu  xpath://span[contains(text(),'right click me')]
#    sleep  5


    #Double Click action
#    go to    ${URL1}
#    maximize browser window
#    double click element    xpath://button[contains(text(),'Copy Text')]
#    sleep  4

    #Drag and drop
    go to    ${URL2}
    maximize browser window
    drag and drop  id:box6  id:box106
    sleep  5

    close browser
