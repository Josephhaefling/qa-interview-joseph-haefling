
Feature: An Example Feature

  Scenario: An example scenario
    Given   I am on the homepage
    
    Then    It should have the text input field for "firstname"

    Then    It should have the text input field for "lastinitial"

    Then    It should have checkbox input field

    Then    It should have a selected checkbox input field

    Then    It should have a Suggest "Male" Rap Name button

    Then    It should have a Suggest "Female" Rap Name button

    Then    It should have no content in the "firstname" text input

    Then    It should have no content in the "lastinitial" text input

    When    I add content to the firstname text input

    Then    It should have content in the firstname field

    Then    It should have no rap name

    When    I click request a "male" rap name

    Then    It should request a male rap name

    When    I input a new name firstname

    Then    It should have text in the firstname field

    When    I add content to the last initial text input

    Then    It should have content to the last initial feild

    When    I deselect the nickname checkbox

    Then    Nickname should be unselected

    Then    It should have no female rap name

    When    I click request a "female" rap name

    Then    It should have a female rap name

    When    I click request a "female" rap name

    Then    It should have two female rap names

