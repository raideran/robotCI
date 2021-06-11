*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}=         Chrome


*** Keywords ***
Driver Setup
    Run Keyword If      '${BROWSER}' == 'Chrome'     create webdriver        ${BROWSER}      Drivers\\chromedriver.exe

Main setup
    driver setup
    Go to                               http://uitestingplayground.com/
    maximize browser window
    wait until page contains element    id=title

Main Teardown
    close browser