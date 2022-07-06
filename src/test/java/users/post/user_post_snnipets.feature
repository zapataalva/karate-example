@ignore
Feature: Reusable scenario for post a user

  @Create
  Scenario:
    Given url "https://reqres.in/api/users"
    And request {"name": "Santiago", "job": "Lider QA" }
    When method POST
    Then status 201
    And def contactId = $.id