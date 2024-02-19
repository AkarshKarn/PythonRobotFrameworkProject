*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  Chrome
${url}  https://www.bookswagon.com/login

*** Test Cases ***
Login to bookswagon


    open browser    ${url}  ${browser}
    maximize browser window
    input text    id=ctl00_phBody_SignIn_txtEmail       7667242501
    input text    id=ctl00_phBody_SignIn_txtPassword        Pass@12345
    click element    //a[text()='Login']
    input text    xpath://input[@placeholder='Title, Author, Publisher or ISBN']    RAHASYA THE SECRET
    click button    xpath://input[@name='btnTopSearch']
    click element    xpath=//*[@id="listSearchResult"]/div[1]/div[4]/div[4]/input[1]
    click element    xpath=//*[@id="aspnetForm"]/header/div[1]/div/div[3]/ul/li[2]/a/span
    click element    xpath=//*[@id="ctl00_phBody_BookCart_lvCart_imgPayment"]
    sleep    5s
    click element    xpath=//input[@id='ctl00_cpBody_lvCustomerAdd_ctrl0_btnUseAddress']
    click element    xpath=//input[@id='ctl00_cpBody_ShoppingCart_lvCart_savecontinue']
    click element    xpath=//input[@id='ctl00_cpBody_btnRazorpay']
    execute javascript    window.scrollTo(0,900)
 #   click element    xpath=//*[@id="form-common"]/div[1]/div[1]/div/div/div[2]/div/button[6]/div/div[1]/div[1]/div[1]
    sleep    60s
#    close browser

