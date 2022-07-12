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
     Element Should Be Visible   com.example.myapplication:id/imageView             com.example.myapplication:id/login