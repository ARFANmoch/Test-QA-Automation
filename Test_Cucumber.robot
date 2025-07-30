*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          Variable_test.robot

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window

User is on the login page
    Go To    ${Url}
    Page Should Contain Element    ${button_login}

User enters valid username and password
    Input Text                           ${username_object}                            ${Login_wrong.user1}
    Input Password                       ${password_object}                            ${Login_wrong.pass2}
    Click Button                         ${button_login}
    Page Should Contain                  ${message_error}                              timeout=3
    
    ${Login.Failed}=    Run Keyword And Return Status    Page Should Contain           ${message_error}
    Run Keyword If    ${Login.Failed}    Log    "Gagal Login"
    
    Run Keyword If    ${Login.Failed}    Go To    ${Url}
    Run Keyword If    ${Login.Failed}    Input Text    ${username_object}    ${Login.user}
    Run Keyword If    ${Login.Failed}    Input Password    ${password_object}    ${Login["pass"]}

User clicks the login button
    Click Button                         ${button_login}

User should see the product page
    Wait Until Page Contains Element     ${Landing_page}                               timeout=3
    Page Should Contain                  ${message_success}

User is Already on the page swag lab shope
    Wait Until Page Contains Element     ${Landing_page}                               timeout=3
    Page Should Contain                  ${message_success}

User Click Item Add To Cart
    Click Element                        ${BACKPACK}
    Click Element                        ${Button_AddCart}

User Click Button Shopping Cart
    Sleep    5
    Reload Page
    Click Element                         ${Shopping_Cart}
    Page Should Contain Element           ${Page_Cart}                                  timeout=3
    
User Already on The Cart
    Page Should Contain Element          ${Page_Cart}                                   timeout=3
    

User Successfully Add Item To Cart
    Wait Until Page Contains Element     ${Description_Item}                                  timeout=3
    Page Should Contain                  ${Tittle_BackPack}

    Click Button    ${Button_Remove}
    Click Button    ${Button_Continue}
    Sleep    5
    Reload Page
    Wait Until Page Contains Element     ${Landing_page}                               timeout=3
    
User is Already on the shopping page
    Sleep    3
    Reload Page
    Wait Until Page Contains Element     ${Landing_page}                               timeout=3
    Page Should Contain                  ${message_success}

User Choose Item to order
    Reload Page
    Click Element                        ${BACKPACK}
    Wait Until Page Contains             ${NameItem}

User Click Add to cart
   Sleep    2
   Reload Page
   Click Element                        ${Button_AddCart}

User Click Shopping cart
   Sleep    5
    Reload Page
    Click Element                         ${Shopping_Cart}
    Page Should Contain Element           ${Page_Cart}                                  timeout=3

User Already on the Cart shopping cart
    Wait Until Page Contains Element     ${Landing_page}                               timeout=3
    Page Should Contain Element          ${Landing_page}

User Click Button Checkout
    Click Button                         ${Button_Checkout}
    Page Should Contain                  ${Title_Information}

User Input Information
    Sleep    2
    Reload Page
    Wait Until Page Contains             ${Title_Information}                          timeout=3
    Input Text                           ${Input_FirstName}                            ${FirstName}
    Input Text                           ${Input_lastName}                             ${LastName}
    Input Text                           ${Input_ZipCode}                              ${ZipCode}

User Click Button continue
    Click Button                         ${Button_Continuecheckout}
    Page Should Contain                  ${Title_Overview}
    Wait Until Page Contains Element     ${Checkout_Information}                       timeout=3 

User Successfully to Order
    Click Button                         ${Button_Finish}
    Wait Until Page Contains Element     ${Page_CheckoutFinish}                        timeout=3
    Sleep    3
    Page Should Contain                  ${Message_SuccessOrder}