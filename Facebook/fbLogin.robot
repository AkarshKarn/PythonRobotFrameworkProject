*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}  https://facebook.com//

*** Test Cases ***
Login to Facebook



    open browser    ${url}  ${browser}
    ${options}=    Evaluate  sys.modules['selenium.webdriver.chrome.options'].Options()    sys
    Call Method     ${options}    add_argument    --disable-notifications
    ${driver}=    Create Webdriver    ${browser}    options=${options}
    Go To     https://facebook.com
    maximize browser window
     input text     id:email     akkikarn20@gmail.com
     input text      id:pass      Password@123
     click element    xpath://button[@data-testid='royal_login_button']
     Sleep  20s
     close browser