Feature: In order to recruit globally
  As Intent Media I want applicants to be able to apply online

  Scenario: Applying Agile Quality Assurance Engineer role via online form
    Given I am on the homepage of IntentMedia
    When I navigate to the job section
    And I choose Agile Quality Assurance Engineer position
    Then I should see "Agile Quality Assurance Engineer" job description
    When I filled out the Apply for this Position form with the following details:
      | First Name    | Arthur                  |
      | Last Name     | Hinh                    |
      | Email Address | arthur_hinh@hotmail.com |
      | Phone Number  | 0432015743              |
    And I paste my resume
#    When I submit the application
#    Then I should see a application confirmation page
