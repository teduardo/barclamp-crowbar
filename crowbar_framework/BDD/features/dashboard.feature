Feature: Dashboard
  In order monitor the sytem
  The system operator, Oscar
  wants to be able to check the status of nodes

  Scenario: Basic Screen
    Given there is a node "dashboard1.crowbar.com"
    When I go to the "dashboard" page
    Then I should see "Node Dashboard"
      And I should see a link to "Add Group"
      And I should see "nodes available in the system"
      And I should see "dashboard1"
      And I should see "You may regroup nodes by dragging"
    Finally throw away node "dashboard1.crowbar.com"

  Scenario: Dashboard Fingerprint
    Given I am on the "dashboard" page
    When I examine the dashboard fingerprint
    Then the dashboard fingerprint should match the REST fingerprint