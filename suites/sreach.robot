*** Settings ***
Library                   AppiumLibrary
Resource                  ../pageObject/sreach.robot
       
*** Test Cases ***
User Search Flight number DA935
    Open Flight Application
    User Tap Sign in
    User Input text username            input_username=support@ngendigital.com
    User Input text password            input_password=abc123
    User Tap Button Sign in
    User Tap Search
    User input text search             id_flight_number=DA935
    User Tap button search
    Verify user after Tap button search
           

