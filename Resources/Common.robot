*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Main setup
    open browser                        http://uitestingplayground.com/     chrome
    maximize browser window
    wait until page contains element    id=title

Main Teardown
    close browser