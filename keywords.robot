*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}          Firefox

*** Keywords ***
Start test
    Close All Browsers
    Open Browser            https://practicesoftwaretesting.com/    ${BROWSER}
    Set Selenium Timeout    10

Clean up
    Close All Browsers

Use search
    [Arguments]                               ${searchTerm}
    Input Text                                css:input[placeholder="Search"]    ${searchTerm}
    Click Button                              Search

Add item to cart
    [Arguments]                               ${itemNumber}
    Click Link                                css:a.card:nth-child(${itemNumber})
    Click Button                              Add to cart

Go to checkout
    Wait Until Page Does Not Contain          Product added to shopping cart
    Click Link                                /checkout

Card text should be
    [Arguments]                               ${cardNumber}    ${extectedText}
    SeleniumLibrary.Element Text Should Be    css:a.card:nth-child(${cardNumber}) > div:nth-child(2) > h5:nth-child(1)    ${extectedText}


