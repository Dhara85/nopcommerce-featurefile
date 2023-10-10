Feature: Bookcategory

  Background: I should be able to see homepage
    Given I enter URL "https://demo.nopcommerce.com/" in browser
    And  I am on homepage

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When I am on homepage
    Then I should be able to see top menu tabs with "<categories>"

    Examples:

      | Categories        |
      | Computer          |
      | Electronic        |
      | Appearel          |
      | Digital downloads |
      | Books             |
      | Jewellery         |
      | Gift card         |

  Scenario Outline: I should be able to see book page with filters

    When I select book category from top menu tabs on homepage
    Then I should be navigated to book category
    And  I should be able to see "<filters>"

    Examples:

      | Filters  |
      | Sort by  |
      | Display  |
      | Grid     |
      | List Tab |

  Scenario Outline: I should be able to see list of terms of each filter

    Given I am on book page
    When I click on "<filter>"
    Then I should be able to see "<list>" in dropdown menu

    Examples:

      | Filter | Sort by                                                                  | Display |
      | List   | Name: A to Z, Z to A, Price: Low to High, Price: High to Low, Created on | 3,6,9   |

  Scenario Outline: I should be able to choose any filter option with specific result

    Given I am on book page
    When  I click on "<filter>"
    And   I click on any "<option>"
    Then  I should be able to choose any filter option from the list
    And   I should be able to see "<result>"
