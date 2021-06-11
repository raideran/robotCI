*** Settings ***
Documentation       This suite will test load delay in a page and click a button
Resource            ..\\Resources\\PO\\LoadDelay.robot
Resource            ..\\Resources\\Common.robot
Library             SeleniumLibrary
Test Setup          Common.Main Setup
Test Teardown       Main Teardown

*** Test Cases ***
LoadDelay
    [Tags]              delay
    Open Load Delay Page
