cahya kurnia, [01/07/2022 21.55]
*** Settings ***
Library             AppiumLibrary
Variables           ../resource/resource_device.yaml

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


User Should Be Able To See Homepage
    Open Flight Application
   
Varify Make Appointment Button login
    Element Should Be Visible         ${button_signin}

Varify image Homepage
    Element Should Be Visible         ${image_homepage}
