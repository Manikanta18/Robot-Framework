*** Settings ***
Library  SeleniumLibrary
Resource  ../../../Data/InputData.robot

*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =  id=mainNav

*** Keywords ***
Navigate To
    go to  ${BACK_OFFICE_URL.${ENV}}

Verify Page Loaded
    wait until page contains element  ${LANDING_NAVIGATION_ELEMENT}