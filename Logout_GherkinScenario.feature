
Feature:    Logout scenario https://www.saucedemo.com/
-------------------------------------------------------------------------------
                    ## POSTIVE CASE ##
    Scenario: Users want to Logout
    Given   Users in Swag Labs Homepage=
    When    Users click navigation bar / burger menu
    Then    Users will see All items, About, Logout, Reset App State feature
    When    Users click Logout
    Then    User will be logged out from the swag labs homepage
