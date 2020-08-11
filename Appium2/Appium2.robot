*** Settings ***
Resource          Keyword/Keyword.robot
Resource          Repository/Repository.robot
Library           AppiumLibrary
Resource          Variable/Variable.robot

*** Test Cases ***
TestCalculator
    GalaxyS7Edge
    Dial*121#
    ${remainbalance_before}    Get Text    com.android.phone:id/dialog_message
    Capture Page Screenshot    balance_beforePlayInternet.png
    Click Element    android:id/button2
    Close Application
    Play Calculator
    Dial*121#
    Sleep    5 minutes
    ${remainbalance_after}    Get Text    com.android.phone:id/dialog_message
    Capture Page Screenshot    balance_afterPlayInternet.png
    Click Element    android:id/button2
    Close Application

TestYoutube
    GalaxyS7Edge
    Dial*121#
    ${remainbalance_before}    Get Text    com.android.phone:id/dialog_message
    Capture Page Screenshot    balance_beforePlayInternet.png
    Click Element    android:id/button2
    Close Application
    Comment    Play Youtube
    Dial*121#
    Sleep    5 minutes
    ${remainbalance_after}    Get Text    com.android.phone:id/dialog_message
    Capture Page Screenshot    balance_afterPlayInternet.png
    Click Element    android:id/button2
    Close Application
