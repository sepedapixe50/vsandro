*** Settings ***
Library                   AppiumLibrary
Resource                  ../pageObject/book.robot
Resource                  Login.robot

*** Test Cases ***
User End-to-End proses book flight
    User tap book flightApp
    User choose list from city
    User choose list to city
    User choose list class
    User choose start date
    User tap button ok start
    User choose end date
    User tap button ok end
    User tap button flightApp
    User tap button book flightApp
    User tap price
    User tap button confirm order
    Verify from city
    Verify airplane
    Verify to city
    Varify book order
    
  