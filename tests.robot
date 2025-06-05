*** Settings ***
Library             SeleniumLibrary
Resource            keywords.robot
Test Setup          Start test
Test Teardown       Clean up  

*** Test Cases ***
When using search function, should show correct products
    [Documentation]                       when searching for pliers, only and all products with the word pliers should show in the overview
    Use search                            Pliers
    Page Should Contain Element           //div[contains(@class,'card')]    4
    Card text should be                   1                                 Combination Pliers
    Card text should be                   2                                 Pliers
    Card text should be                   3                                 Long Nose Pliers
    Card text should be                   4                                 Slip Joint Pliers

When adding product to shopping cart, product should be in shopping cart
    [Documentation]                       When adding a tool to the shopping cart, the product and only that product should show in the shopping cart
    Add item to cart                      2                
    Go to checkout
    Element Text Should Be                css:.product-title                Pliers${SPACE}
    Textfield Should Contain              data:test:product-quantity        1

When updating items in shopping cart, should show correct total price
    [Documentation]                       When the number of an item ordered is updated, the total price should be automdatically recalculated
    Add item to cart                      2
    Go to checkout
    Element Text Should Be                data:test:cart-total               $12.01
    Input Text                            data:test:product-quantity         2
    Click Element                         data:test:cart-total
    Element Text Should Be                data:test:cart-total               $24.02