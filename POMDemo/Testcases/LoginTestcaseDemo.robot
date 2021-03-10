*** Settings ***
Library  SeleniumLibrary
#Resource  ../Resources_Demo/LoginPageKeywords.robot
Resource  ../POMDemo/ResourcesORKeywords/LoginPageKeywords.robot

*** Variables ***
${BrowserC}  Chrome
${URL}	 http://demo.guru99.com/test/newtours/
${ChromeDriverPath}		C:/WebDrivers/chromedriver.exe
${User}		tutorial
${Pwd}		tutorial

*** Test Cases ***
LoginTestDemo
	Open my Browser	 ${URL}	${BrowserC}	${ChromeDriverPath}
	Enter Username	${User}
	Enter Password	${Pwd}
	Click SignIn
	Get page title
	Verify Successful Login
	close Browsers

