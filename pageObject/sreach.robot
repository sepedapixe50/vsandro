cahya kurnia, [01/07/2022 21.55]
*** Settings ***
Library             AppiumLibrary
Variables           ../resource/resource_device.yaml
Resource            login.robot

*** Keywords ***
User Tap Search
    Tap                   ${sreach}

User input text search
    [Arguments]           ${id_flight_number}
    Input text            ${text_sreach}        ${id_flight_number}

User Tap button search
    Tap                   ${button_sreach}

Verify user after Tap button search
    Element Should Be Visible       ${verifikasi_sreach}



