
Feature:   checkout products https://www.saucedemo.com/
-------------------------------------------------------------------------------
                    ## POSTIVE CASE ##
    Scenario: Users can see all product and features in Swag Labs Homepage
    Given   Users successfully login with valid credentials
    When    Users in the Swag Labs Homepage
    Then    Can choose the product available
    And     Each product shows name, image, description, and price
    And     Navigation bar (burger menu) visible
    And     Social media is visible at the bottom page

    Scenario: Users can see the detail product
    Given   Users in Swag Labs Homepage
    And     Users has finish sort product "Price (low to high)"
    When    Users click product
    Then    The product detail are show
    And     See the description product
    And     Price of product
    And     See button "Add to cart"

    Scenario: Users can add to cart product 
    Given   Users in Swag Labs Homepage
    And     Users has finish sort product "Price (low to high)"
    When    Users click button "Add to cart"
    Then    the product will be added to the user cart

    Scenario: Users can add to cart product by detail product 
    Given   Users in detail product 
    When    Users click button "Add to cart"
    Then    the product will be added to the user cart

    Scenario: Users can remove the product
    Given   Users in Swag Labs Homepage
    And     Users has finish sort product "Price (low to high)"
    When    Users click button "Add to cart"
    And     Users click button "Remove"
    Then    the product will be removed from user cart

    Scenario: Users can remove the product by detail product 
    Given   User in detail product 
    When    User click button "Add to cart"
    And     Users click button "Remove"
    Then    the product will be removed from user cart

    Scenario: Users can remove the product from cart page 
    Given   Users in cart page
    And     User already checkout product
    When    User click button "Remove"
    Then    the product will be removed from cart

    Scenario: Users can add product, more than 1 product
    Given   Users in Swag Labs homepage
    And     User already add to cart product
    When    User add to cart many product
    Then    The product in the cart will be increase

    Scenario: Users can continue shopping in cart page
    Given   Users in cart page
    And     User already checkout product
    When    User click button "Continue Shopping"
    And     Users Click button "Add to cart" other product
    And     UsersClick cart icon
    Then    The product will increase

    Scenario: Users must enter their name and house number
    Given   Users in cart page
    And     User already checkout product
    When    User click button "Checkout"
    Then    Will direct to checkout : your information page
    And     Will see the first name, last name, Zip/Postal code column
    When    Users should fill the first name column
    And     Users fill the last name column
    And     Users Fill Zip/Postal code
    And     Users can click button "Continue"
    Then    Will redirect to Checkout : Overview page

    Scenario: Users see the price details and other things on the product has been checkout
    Given   Users already fill first name, last name and Zip/Postal code column in checkout : your information page
    And     User already in Checkout : Overview page
    When    User in in Checkout : Overview page
    And     User can scroll down
    Then    Will see quantity product
    And     Description of product will show
    And     Price of product will show
    And     Will see the payment information
    And     Will see the shipping information
    And     Total price of product including tax

    Scenario: Users finished the checkout product
    Given   User already in Checkout : Overview page
    When    User click button "finish"
    Then    Will direct to thank you page
    And     Users will see button "Back Home"
    When    Users click button "Back Home"
    And     Will direct to Swag Labs Homepage

   
                    ## NEGATIVE CASE ##
    Scenario: Users can't continue checkout if not fill the firs name, last name and zip/postal code
    Given   User in checkout : your information page
    When    User not fill first name column
    And     User not fill last name column
    And     User not fill zip/postal code column
    And     Users click button "continue"
    Then    User will get error message : Error: First Name is required

    Scenario: Users closes the error message in Checkout: Your Information page
    Given   Error message is displayed on the Checkout: Your Information page
    When    Users clicks the X icon
    Then    The error message will disappears





    
