Feature: Register user

  @Register
  Scenario: Register successful
    Given url 'https://reqres.in/api/register'
    And request { "email": "eve.holt@reqres.in", "password": "pistol" }
    When method POST
    Then status 200
    And match $.id == 4
    And def token = $.token