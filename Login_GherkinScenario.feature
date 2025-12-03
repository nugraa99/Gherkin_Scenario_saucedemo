
Feature:    Login scenario https://www.saucedemo.com/
-------------------------------------------------------------------------------
                    ## POSTIVE CASE ##
    Scenario: Users success login with correct credentials
    Given   Users open saucedemo Login page
    And     The Login page is display with empty field username-password
    When    Users input the Username "standard_user"
    And     Users input the Password "secret_sauce"
    And     Users click button Login
    Then    Will direct to Swag Labs Homepage
    And     The product list is displayed
    And     The cart icon and filter are visible


                    ## NEGATIVE CASE ##
    Scenario: Users not fill the username 
    Given   Users open saucedemo Login page
    And     The Login page is display with empty field username-password
    When    Users not fill the Username " "
    And     Fill the Password "secret_sauce"
    And     Users click button Login
    Then    get error message : "Epic sadface: Username is required"
    And     Users cannot direct to Swag Labs Homepage

    Scenario: Users not fill the password 
    Given   Users open saucedemo Login page
    And     The Login page is display with empty field username-password
    When    Users fill the Username "standard_user"
    And     Not fill the Password " "
    And     Users click button Login
    Then    get error message : "Epic sadface: Password is required"
    And     Users cannot direct to Swag Labs Homepage

    Scenario: Users not fill the username & password 
    Given   Users open saucedemo Login page
    And     The Login page is display with empty field username-password
    When    Users not fill the Username " "
    And     Users not fill the Password " "
    And     Users click button Login
    Then    get error message : "Epic sadface: Username is required"
    And     Users cannot direct to Swag Labs Homepage

    Scenario: User fill incorrect username & password
    Given   Users open saucedemo Login page
    And     The Login page is display with empty field username-password
    When    Users fill the Username "Standard_user123"
    And     Users fill the Password "secret_sauce"
    And     Users click button Login
    Then    get error message : "Epic sadface: Username and password do not match any user in this service"
    And     Users cannot direct to Swag Labs Homepage

    Scenario: Users closes the error message
    Given   Error message is displayed on the Login page
    When    Users clicks the X icon
    Then    The error message will disappears


