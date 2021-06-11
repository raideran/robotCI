*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${load_delay_link}=         link:Load Delay
${delay_button}=            css:.btn.btn-primary

*** Keywords ***
Open Load Delay Page
    wait until element is visible       ${load_delay_link}
    click link                          ${load_delay_link}
    wait until page contains element    ${delay_button}         timeout=8 s

