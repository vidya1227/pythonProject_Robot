*** Settings ***
Library  SeleniumLibrary
#Variables  ../PageObjects_Demo/Locators.py
#Variables  ../POMDemo/PageObjects/Locators.py
Variables  ../PageObjects_Demo/Locators.py

*** Keywords ***
Open my Browser
	[Arguments]  ${URL}	${BrowserC}	${ChromeDriverPath}
	create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    go to    ${URL}
    maximize browser window

Enter Username
	[Arguments]  ${sUsername}
	Input Text	 ${txt_loginUsername}	${sUsername}

Enter Password
	[Arguments]  ${sPassword}
	Input Text	 ${txt_loginPassword}	${sPassword}

Click SignIn
	Click button  ${btn_signIn}

Verify Successful Login
	title should be Login: Mercury Tours

Get page title


close Browsers
	close all browsers

