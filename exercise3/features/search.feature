Feature: Google Search

  @IQR-301
  Scenario: Normal search
    Given I am on the Google Home Page
    When I search for 'Watir'
    Then I see over 500000 results

  @IQR-302
  Scenario: Typo in search
    Given I am on the Google Home Page
    When I search for 'asension'
    Then I am informed that I am shown results for 'ascension'
    And I have the option to search for 'asension' instead

  @IQR-303 @wip
  Scenario: Convert 10 inches to meters
    Given I am on the Google Home Page
    When I search for '10 inches'
    And I select 'Metre' as target unit
    Then I am shown '10 Inch' is equal to '0.254 Metre'

