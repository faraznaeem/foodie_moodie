Feature: As a user
  In order to select a restaurant that delivers to my location
  I need to be able to enter my location and see a list of this restaurants.

Background:
  Given the following restaurants exist:
    | name             | address1           | postal_code | phone_number | city      |
    | Vapiano          | Sturegatan 12      | 114 36      | 08 662 20 11 | Stockholm |
    | Rice             | Nybrogatan 16      | 114 39      | 08-661 32 35 | Stockholm |
    | Green & Rum      | Östra Hamngatan 16 | 411 09      | 031-15 09 00 | Göteborg  |
    | Tandoori Kitchen | Friggagatan 15     | 411 01      | 031-23 09 19 | Göteborg  |

@javascript
Scenario:
  When I visit "landing" page
  And my current location is set to "59.33066" lat and "18.057932" lng
  Then Show me a image of the page
