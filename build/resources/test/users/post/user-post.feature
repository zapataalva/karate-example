Feature: Post user on reqres

  Background:
    * url "https://reqres.in"
    * path "/api/users/2"
    #* request {"name": "Santiago", "job": "QA" }
    * request {"name": "#(name)", "job": "#(job)" }
    #* def var = {"name": "Santiago", "job": "QA" } #Ejemplo de creación de variable para usar en los escenarios

  Scenario: Post a user
    When method POST
    Then status 201

  Scenario Outline: Post a users
    When method POST
    Then status 201

    Examples:
      | name     | job    |
      | Santiago | QA     |
      | Juan     | Dev    |
      | Carlos   | Doctor |