*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Seting value sets counter to the input value
    Go To    ${HOME_URL}
    Title Should Be    Laskuri
    Page Should Contain  nappia painettu 0 kertaa
    Input Text     value    10
    Click Button    aseta
    Page Should Contain  nappia painettu 10 kertaa