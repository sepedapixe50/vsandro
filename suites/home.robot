*** Settings ***
Library             AppiumLibrary
Resource            ../pageObject/home.robot


*** Test Cases ***
verify login
    User Should Be Able To See Homepage
    Varify Make Appointment Button login
    Varify image Homepage
