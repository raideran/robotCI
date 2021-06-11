*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}=         Chrome


*** Keywords ***
Main setup
    open browser                        http://uitestingplayground.com/     ${BROWSER}
    maximize browser window
    wait until page contains element    id=title

Main Teardown
    close browser