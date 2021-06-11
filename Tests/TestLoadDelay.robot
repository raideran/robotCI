*** Settings ***
Documentation       This suite will test load delay in a page and click a button
Resource            ..\\Resources\\PO\\LoadDelay.robot
Resource            ..\\Resources\\Common.robot
Test Setup          Common.Main Setup
Test Teardown       Main Teardown

*** Test Cases ***
Test Load Delay in a page
    [Tags]              delay
    Open Load Delay Page
