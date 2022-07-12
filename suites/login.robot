*** Settings ***
Library                   AppiumLibrary
Resource                  ../pageObject/login.robot           

*** Test Cases ***
User login username and password valid data
    Open Flight Application
    User Tap Sign in
    User Input text username            input_username=support@ngendigital.com
    User Input text password            input_password=abc123
    User Tap Button Sign in
    Verify acc user after tap button sign in

