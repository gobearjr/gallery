Feature: Checkout Gallery
This is feature for navigating into Shire and Checkout

    Scenario: Checkout Walter henley (white) SKU
        Given user click shrine on homepage
        When user click drawer menu and select "CLOTHING" section
        And user add "Walter henley (white)" item
        When user click drawer menu and select "ACCESSORIES" section
        And user add "Shrug bag" item
        Then user will see "Walter henley (white)" and "Shrug bag" with total "$264.16"