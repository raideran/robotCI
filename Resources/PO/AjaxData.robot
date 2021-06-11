*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${ajax_data_link}=          link:AJAX Data
${data_trigger_button}=     id:ajaxButton
${data_message}=            class:bg-success

*** Keywords ***
Load Ajax Data Page
    wait until element is visible               ${ajax_data_link}
    click link                                  ${ajax_data_link}
    wait until page contains element            ${data_trigger_button}
    click button                                ${data_trigger_button}
    wait until page contains element            ${data_message}         timeout=18 s
    Element Text Should Be                      ${data_message}         Data loaded with AJAX get request.
