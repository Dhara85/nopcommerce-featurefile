Feature: Nopcommerce Registration

  As a user, I want to check register user functionality

  Background: I am on Nopcommerce Registration page
    Given I open the Google Chrome browser
    When  I open the URL https://demo.nopcommerce.com/register
    Then  I am on Nopcommerce registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory field (*) on registration field
    When I enter the first name "<First name>"
    And  I enter the last name "<Last name>"
    And  I enter the Email address "<Email>"
    And  I enter Password "<Password>"
    And  I enter Confirm Password "<Confirm Password>"
    And  Click on Register button
    Then I can see an error message "<error message>"
    And  I am not able to register

    Examples:

      | First Name | Last Name | Email            | Password | Confirm Password | Error message                              |
      |            | Bakshi    | bakshi@gmail.com | 456897   | 456897           | Please enter First name                    |
      | Rohan      |           | bakshi@gmail.com | 456897   | 456897           | Please enter Last name                     |
      | Rohan      | Bakshi    |                  | 456897   | 456897           | Please enter email                         |
      | Rohan      | Bakshi    | bakshi@gmail.com |          | 456897           | Password is required                       |
      | Rohan      | Bakshi    | bakshi@gmail.com | 456897   | 456897           | Confirm Password is required               |
      | Rohan      | Bakshi    | bakshi@gmail.com | 456897   | 45689            | Password and confirm password do not match |
      | Rohan      | Bakshi    | bakshi@gmail.com | 45689    |                  | Minimum 6 character password is required   |
      |            |           |                  |          |                  | Mandatory field(*) is required             |

  Scenario: I should be able to select any one radio button from Gender Label of your Personal Details section

    Given I am on Gender label of your personal detail section
    When  I select "Male" radio button
    And   I select "Female" radio button
    Then  I am able to select any one of the radio button

  Scenario Outline: I should be able to select Day, Month and Year from drop down list of Date of Birth field

    Given I am on Date of Birth field of your Personal Detail section
    When  I select day "<Day>"
    And   I select month "<Month>"
    And   I select Year "<Year>"
    Then  I am able to select Day,Month and Year from drop down list

    Examples:
      | Day | Month    | Year |
      | 11  | November | 1989 |

  Scenario: I should be able to check and uncheck the Newsletter box on Options section

    Given  I am on Newsletter label on Options
    When   I click on Newsletter checkbox
    And    I again click on Newsletter Checkbox
    Then   I was able to check and uncheck the box the next to Newsletter label

  Scenario: I should be able to register with valid mandatory(*) field data on registration page

    When  I enter First name "Rohan"
    And  I enter Last name "Bakshi"
    And  I enter Email "bakshi@gmail.com"
    And  I enter Password "456897"
    And  I enter Confirm Password "456897"
    And  I click on Register button
    Then I was able to register successfully


