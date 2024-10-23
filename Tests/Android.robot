*** Settings ***
Resource  ../Resources/AndroidCommon.robot

Test Setup  AndroidCommon.Open test app
Test Teardown  AndroidCommon.Close test app

*** Variables ***
${TIMEOUT}  3000

*** Test Cases ***
Example of Connecting to LambdaTest via Robot Framework
    [Timeout]  ${TIMEOUT}
    Click Element  id=color
    Sleep  20 seconds
    AppiumLibrary.Background App  -1
    Sleep  10 seconds
    Activate App  com.android.chrome
    Sleep  15 seconds
    # Type 'ritam'
   # AppiumLibrary.Send Keys  ritam
    Activate App  com.lambdatest.proverbial
    Sleep  15 seconds
    
    # Interact with the LambdaTest app
    Click Element  id=Text
    Click Element  id=toast
    Click Element  id=notification
    Click Element  id=geoLocation
    Sleep  2 seconds
    Click Element  id=buttonPage
    Sleep  2 seconds
    Click Element  xpath=//android.widget.Button[contains(@text,"SPEED TEST")]
    Sleep  2 seconds

    # Input URL in the webview
    Click Element  id=webview
    Input Text  id=url  https://lambdatest.com
    Click Element  id=find
