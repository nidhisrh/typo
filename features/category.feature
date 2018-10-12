Feature: Create Categories
  I want to be able to create new categories
  I should be able to delete and edit categories
  
  Background:
     Given the blog is set up
     And I am logged into the admin panel
  
  
  Scenario: Create a new category
    Given I am on the admin categories page
    When I fill in "category_name" with "Food"
    And I fill in "category_keywords" with "American Mexican"
    And I fill in "category_permalink" with "chipotle"
    And I fill in "category_description" with "description"
    And I press "Save"
    Then I should see "Food" 
    And I should see "American Mexican" 
    And I should see "chipotle"
    And I should see "description" 
    
  Scenario: Edit a Category
    Given I am on the admin categories page
    When I fill in "category_name" with "Food"
    And I fill in "category_keywords" with "American Mexican"
    And I fill in "category_permalink" with "Chipotle"
    And I fill in "category_description" with "description"
    And I press "Save"
    And I follow "Food"
    When I fill in "category_name" with "Drinks"
    And I fill in "category_keywords" with "Wine and Beer"
    And I fill in "category_permalink" with "Bud"
    And I fill in "category_description" with "light"
    And I press "Save"
    Then I should see "Drinks" 
    Then I should see "Wine and Beer"
    Then I should see "Bud"
    Then I should see "light"