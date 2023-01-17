*** Settings ***
Library     SeleniumLibrary
Resource    ../setup/API.robot
Library    SeleniumLibrary

*** Test Cases ***
a
    ListUser
    SingleUser
    ListResource
    SingleResource
    put_update
    patch_update
    Register
    Login
    Delete
