
@UC10
Feature: Feature_Demo


  @UC10_1
  Scenario Outline: <TestCase>
    Given User luanch the URL 
    When  User Logs in with "Username", "Password"
    When Successfully login with "Login1"
    Then Navigate to home page with "Search"


 Examples: 
      | TestCase     |
      |Verify_Errors |

