*** Settings ***
Library  SeleniumLibrary
#Resource  ../Resources_Demo/LoginPageKeywords.robot
Resource  ../POMDemo/ResourcesORKeywords/RegistrationPageKeywords.robot

*** Variables ***
${BrowserC}  Chrome
${URL}	 http://demo.guru99.com/test/newtours/
${ChromeDriverPath}		C:/WebDrivers/chromedriver.exe
${sFirstName}	Vidya
${sLastName}	Shri
${sPhone}	123456789
${sEmail}	vidya@gmail.com
${sAddress}	 India
${sCity}	Banglore
${sState}	Karnataka
${sPostalCode}	123456
${sCountry}	 INDIA
${sUserName}	Vidya123
${sPassword}	Vidya123
${sUserName}	Vidya123
${sConfirmPassword}		Vidya123


*** Test Cases ***
RegistrationTestDemo
	Open my Browser	 ${URL}	${BrowserC}	${ChromeDriverPath}
	sleep	3
	Click Rigister Link
	Enter FirstName	${sFirstName}
	Enter LastName	${sLastName}
	Enter Phone	${sPhone}
	Enter Email	${sEmail}
	Enter Address	${sAddress}
	Enter City	${sCity}
	Enter State	${sState}
	Enter PostalCode	${sPostalCode}
	Enter Country	${sCountry}
	Enter UserName	${sUserName}
	Enter Password	${sPassword}
	Enter UserName	${sUserName}
	Enter ConfirmPassword	${sConfirmPassword}
	Click On Submit
	Get page title
	sleep	3
	Verify Successfull registration
	sleep	3
	close Browsers