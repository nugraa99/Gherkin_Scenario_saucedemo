
Feature:   sorting products https://www.saucedemo.com/
-------------------------------------------------------------------------------
                    ## POSTIVE CASE ##
    Scenario: Users can sort the product
    Given   User in Swag Labs Homepage
    And     Default sort product is "Name (A to Z)"
    When    User click filter icon
    And     User click "Price (low to high)"
    Then    The product are sorted from low prices to high prices

    Scenario: Users can change the sort product
    Given   User has finish sort product "Price (low to high)"
    When    User click filter icon
    And     User click "Name (Z to A)"
    Then    The product will show with prefix letter Z to A


                    ## NEGATIVE CASE ##
    Scenario: Users can't choose sort product more than 1 filter
    Given   User has finish sort product by "Name (Z to A)"
    When    User click sort icon
    And     choose 1 sort product again
    Then    User only can change the sort product

    Scenario: Users will back to default filter by "Name (A to Z)"
    Given   User has finish sortir product by "Name (Z to A)"
    When    User click product
    And     click button "Back to products"
    Then    Filtering sort product back to default settings by "Name (A to Z)"

    