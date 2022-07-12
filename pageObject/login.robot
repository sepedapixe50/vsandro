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

User Tap Sign in
    Wait Until Page Contains              ${button_signin}
    Tap                   ${button_signin}

User Input text username
    Wait Until Page Contains      ${username}
    [Arguments]           ${input_username}
    Input text            ${username}       ${input_username}

User Input text password
    [Arguments]           ${input_password}
    Input text            ${password}       ${input_password}

User Tap Button Sign in 
    Tap                   ${button_login}

Verify acc user after tap button sign in
    Wait Until Page Contains        com.example.myapplication:id/textView
    Element Should Be Visible       ${Verifikasi_Login}  