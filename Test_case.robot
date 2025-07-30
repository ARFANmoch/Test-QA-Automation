*** Settings ***
Documentation     Login Feature File (seperti cucumber feature)
Resource          Test_Cucumber.robot
Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser

*** Test Cases ***
User Valid Login With Standard User
    Given User is on the login page
    When User enters valid username and password
    And User clicks the login button
    Then User should see the product page

User Add Item To Cart
    Given User is Already on the page swag lab shope
    When User Click Item Add To Cart
    And User Click Button Shopping Cart
    And User Already on The Cart
    Then User Successfully Add Item To Cart

User Checkout Item
    Given User is Already on the shopping page
    When User Choose Item to order
    And User Click Add to cart
    And User Click Shopping cart
    And User Already on the Cart shopping cart
    And User Click Button Checkout
    And User Input Information
    And User Click Button continue
    Then User Successfully to Order
