*** Settings ***

Suite Setup  log to console		Opening Browser
Suite Teardown  log to console	 Closing Browser


Test Setup  log to console   Login to application
Test Teardown  log to console   Logout from application

*** Test Cases ***
TC1 Prepaind Recharge
	[Tags]  sanity
	log to console	This is Prepaid recharge testcase
TC2 Postpaid Recharge
	[Tags]  regression
	log to console	This is Postpaid recharge testcase
TC3 Search
	[Tags]  smoke
	log to console	This is Search testcase
TC4 Advanced Search
	[Tags]  sanity
	log to console	This is Advanced Search testcase

