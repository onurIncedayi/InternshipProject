Feature: PG16_10 Feature

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly
    Given user goes to page with LeftNav Menu
      | setupOneMenu      |
      | parametersSubMenu |
      | gradeLevels       |

  @Regression
  Scenario Outline: Add Grade Level

    When user clicks to Dialog Content
      | addButton |

    And user sends information to Dialog Content
      | nameInput  | <nameInput>  |
      | shortName  | <shortName>  |
      | orderInput | <orderInput> |

    When user clicks to Dialog Content
      | saveButton |

    Then Success message should be displayed

    Examples:
      | nameInput | shortName | orderInput |
      | test0447  | test04338 | 2          |

  @Regression
  Scenario Outline: Edit Departments

    When user clicks to Dialog Content
      | editButton |

    And user sends information to Dialog Content
      | nameInput | <nameInput> |
      | shortName | <shortName> |


    When user clicks to Dialog Content
      | saveButton |


    Then Success message should be displayed

    Examples:
      | nameInput | shortName |
      | test4408  | test42574 |

  @Regression
  Scenario: Delete Departments

    And user clicks to Dialog Content
      | deleteButton    |
      | deleteDialogBtn |

    Then Success message should be displayed
