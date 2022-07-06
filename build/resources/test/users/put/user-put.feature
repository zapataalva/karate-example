Feature: Put user on reqres

  Background:
    * url "https://reqres.in"
    * path "/api/users/2"

  Scenario: Put a user
    Given request { "name": "Santiago", "job": "QA Automation" }
    When method PUT
    Then status 200
    And match $.name == 'Santiago'