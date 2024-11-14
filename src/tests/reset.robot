*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Reset button sets counter to zero when counter has non-zero value
    Go To    ${HOME_URL}
    Title Should Be    Laskuri
    Page Should Contain  nappia painettu 2 kertaa
    Click Button    Nollaa
    Page Should Contain  nappia painettu 0 kertaa