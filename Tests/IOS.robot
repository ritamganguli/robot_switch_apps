*** Settings ***

Resource  ../Resources/Common.robot

Test Setup  Common.Open test app
Test Teardown  Common.Close test app
 
*** Variables ***
${TIMEOUT}          3000

*** Test Cases ***

Example of connecting to Lambdatest via Robot Framework
	[Timeout]   ${TIMEOUT}
	Click element  id=color
    AppiumLibrary.Background App  -1
    Sleep  10 seconds
    Activate App  com.apple.mobilesafari
    Sleep  10 seconds
    Activate App  proverbial
    Sleep  10 seconds
	Click element  id=Text
	Click element  id=toast
		
	Click element  id=notification
	Click element  id=geoLocation
	Sleep	2 seconds
	