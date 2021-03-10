*** Settings ***
Library  SeleniumLibrary
#Variables  ../PageObjects_Demo/Locators.py
Variables  ../POMDemo/PageObjects/Locators.py

*** Keywords ***
Open my Browser
	[Arguments]  ${URL}	${BrowserC}	${ChromeDriverPath}
	create Webdriver    ${BrowserC}    executable_path=${ChromeDriverPath}
    go to    ${URL}
    maximize browser window

Click Rigister Link
	Click link  ${lnk_Register}

Enter FirstName
	[Arguments]  ${sFirstName}
	Input Text	 ${txt_FirstName}	${sFirstName}

Enter LastName
	[Arguments]  ${sLastName}
	Input Text	 ${txt_LastName}	${sLastName}

Enter Phone
	[Arguments]  ${sPhone}
	Input Text	 ${txt_Phone}	${sPhone}

Enter Email
	[Arguments]  ${sEmail}
	Input Text	 ${txt_Email}	${sEmail}

Enter Address
	[Arguments]  ${sAddress}
	Input Text	 ${txt_Address}	${sAddress}

Enter City
	[Arguments]  ${sCity}
	Input Text	 ${txt_City}	${sCity}

Enter State
	[Arguments]  ${sState}
	Input Text	 ${txt_State}	${sState}

Enter PostalCode
	[Arguments]  ${sPostalCode}
	Input Text	 ${txt_PostalCode}	${sPostalCode}

Enter Country
	[Arguments]  ${sCountry}
	Select from list by label	${pop_Country}	${sCountry}

Enter UserName
	[Arguments]  ${sUserName}
	Input Text	 ${txt_UserName}	${sUserName}

Enter Password
	[Arguments]  ${sPassword}
	Input Text	 ${txt_Password}	${sPassword}

Enter ConfirmPassword
	[Arguments]  ${sConfirmPassword}
	Input Text	 ${txt_ConfirmPassword}	${sConfirmPassword}

Click On Submit
	Click button  ${btn_Submit}

Verify Successfull registration
	Page should contain  Thank you for registering.

Get page title
	${title}=  get title
    log to console  ${title}

close Browsers
	close all browsers

