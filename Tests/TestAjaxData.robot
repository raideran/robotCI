*** Settings ***
Documentation       This suite will test Ajax Data Retrieve in a page
Resource            ..\\Resources\\PO\\AjaxData.robot
Resource            ..\\Resources\\Common.robot
Test Setup          Common.Main Setup
Test Teardown       Main Teardown

*** Test Cases ***
Test Ajax Data Retrieve in a page
    [Tags]      Delay
    Load Ajax Data Page