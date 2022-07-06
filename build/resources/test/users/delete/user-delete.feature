Feature: Delete user on reqres

  Scenario: Delete a user
    * call read("../post/user_post_snnipets.feature@Create")
    Given url "https://reqres.in" + "/api/users" + contactId
    When method DELETE
    Then status 204