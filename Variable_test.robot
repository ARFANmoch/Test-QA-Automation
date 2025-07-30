*** Variables ***
${Browser}                  Chrome
${Url}                      https://www.saucedemo.com/
&{Login}                    user=standard_user            pass=secret_sauce
&{Login_wrong}              user1=wrong_username          pass2=wrong_password
${username_object}          //*[@id="user-name"]
${password_object}          //*[@id="password"]
${button_login}             //*[@id="login-button"]
${Landing_page}             //*[@id="header_container"]/div[2]
${message_error}            Epic sadface: Username and password do not match any user in this service
${message_success}          Swag Labs
${TIMEOUT}                  timeout=5
${BACKPACK}                 //*[@id="item_4_title_link"]/div
${Iventory_item}            //*[@id="inventory_item_container"]
${Button_AddCart}           //button[text()='Add to cart']
${Shopping_Cart}            //*[@id="shopping_cart_container"]
${Button_Remove}            //button[text()='Remove']
${Page_Cart}                //span[text()='Your Cart']
${Description_Item}         //*[@id="cart_contents_container"]/div/div[1]/div[3]/div[2]
${Tittle_BackPack}          carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.
${Button_Checkout}          //*[@id="checkout"]
${Title_Information}        Checkout: Your Information
${Input_FirstName}          //*[@id="first-name"]
${Input_lastName}           //*[@id="last-name"]
${Input_ZipCode}            //*[@id="postal-code"]
${Button_Continue}          //button[text()='Continue Shopping']
${Title_Overview}           Checkout: Overview
${Checkout_Information}     //*[@id="checkout_summary_container"]/div/div[2]
${Button_Finish}            //*[@id="finish"]
${Page_CheckoutFinish}      //*[@id="checkout_complete_container"]
${Message_SuccessOrder}     Thank you for your order!  
${Button_Back}              //*[@id="back-to-products"]
${FirstName}                Jems
${LastName}                 Bon
${ZipCode}                  15331
${NameItem}                 Sauce Labs Backpack
${Button_Continuecheckout}    //*[@id="continue"]