Feature: Login in reqres

  Background:
    * url 'https://reqres.in/api/login'
    * def token = call read('classpath:users/post/register_post.feature')

  Scenario: Login  unsuccessful
    Given request {"email": "peter@klaven"}
    When method POST
    Then status 400
    And match $ contains {"error": "Missing password"}
    #$ es igual a response (respuesta de la api)

  Scenario: Login successful
    Given request { "email": "eve.holt@reqres.in", "password": "cityslicka" }
    When method POST
    Then status 200
    And match response == {"token": '#(token.token)'}


