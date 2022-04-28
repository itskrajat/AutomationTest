*** Settings ***
Documentation           Login in Zoom Account
Library           SeleniumLibrary
Library           Selenium2Library

*** Variables ***
${URL}            https://zoom.us/signin
${username}       itskrajat@gmail.com
${browser}        Google Chrome

*** Test Cases ***
Zooom login without input
    [Tags]   Unsuccessful Login in Zoom Web-Browser
    Selenium2Library.Open Browser    ${URL}    ${browser}
    Selenium2Library.Click Button	//div[4]/div/div/button
    Selenium2Library.page should contain element  //*[@id="email-error"]  Please enter your email address
    Selenium2Library.page should contain element  //*[@id="password-error"]  Please enter your password
    Selenium2Library.Close Browser
