Feature: Checkout Gallery
This is feature for navigating into Shire and Checkout

    Scenario: Checkout Walter henley (white) SKU
        Given user click shrine on homepage
        When user click drawer menu and select "clothing" section
        And user add "Walter henley (white)" item
        When user click drawer menu and select "accessories" section
        And user add "Shrug bag" item