Feature: As a user
  In order to decide what dish to choose
  I need to see a list of dishes on the restaurant page with price

  Background:

    Given the following restaurants exist:
      | name       | address1     | postal_code | phone_number | city  | cuisine     |
      | Indian Fun | Snorgatan 12 | 164 55      | 1234555      | Kista | Indian Food |

    And the following categories exist:
      | name    | description                     |
      | Starter | Start your dinner with fun      |
      | Main    | Brace yourself winter is coming |
      | Dessert | Winter is here                  |

    And the following dishes exist:
      | title         | description                      | price | restaurant | dish_category  |
      | papadom       | deep fried crunchy things        | 100   | Indian Fun | Starter        |
      | indian lamb   | lamb with indian spices          | 200   | Indian Fun | Main           |
      | chicken curry | chicken boiled in curry sauce    | 300   | Indian Fun | Main           |
      | vegan curry   | vegetables boiled in curry sauce | 400   | Indian Fun | Main           |
      | choco curry   | Chocolate boiled in curry sauce  | 500   | Indian Fun | Dessert        |


  Scenario Outline:
    When I visit "restaurant" page
    And I should see "<title>"
    And I should see "<description>"
    And I should see "<price>"
    And I should see "<dish_category>"

    Examples:
      | title         | description                      | price | dish_category |
      | papadom       | deep fried crunchy things        | 100   | Starter       |
      | indian lamb   | lamb with indian spices          | 200   | Main          |
      | chicken curry | chicken boiled in curry sauce    | 300   | Main          |
      | vegan curry   | vegetables boiled in curry sauce | 400   | Main          |
      | choco curry   | Chocolate boiled in curry sauce  | 500   | Dessert       |
