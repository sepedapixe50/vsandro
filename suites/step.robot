cahya kurnia, [01/07/2022 21.55]
*** Settings ***
Library             AppiumLibrary

*** Variables ***
${REMOTE_URL}           http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     9
${DEVICE_NAME}          52001577b8f53537
${PACKAGE_NAME}         com.example.myapplication
${ACTIVITY_NAME}        com.example.myapplication.MainActivity


*** Keywords ***
Open Flight Application
    Open Application        ${REMOTE_URL} 
    ...                     platformName=${PLATFORM_NAME}
    ...                     platformVersion=${PLATFORM_VERSION}
    ...                     deviceName=${DEVICE_NAME}
    ...                     appActivity=${ACTIVITY_NAME}
    ...                     appPackage=${PACKAGE_NAME}
    ...                     automationName=UiAutomator2
    ...                     newCommandTimeout=5000

*** Test Cases ***
User Should Be Able To See Homepage
    Open Flight Application
     Element Should Be Visible   com.example.myapplication:id/login
     Element Should Be Visible   com.example.myapplication:id/imageView             
     tap                            com.example.myapplication:id/login
     tap                            	
com.example.myapplication:id/username
com.example.myapplication:id/password
com.example.myapplication:id/signIn
com.example.myapplication:id/search_flight
com.example.myapplication:id/textView
com.example.myapplication:id/flight_number
com.example.myapplication:id/searchFlight
/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TableLayout