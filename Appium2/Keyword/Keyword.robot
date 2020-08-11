*** Settings ***
Library           AppiumLibrary
Library           OperatingSystem

*** Keywords ***
GalaxyS7Edge
    Open Application    @{URL}    platformName=android    androidVersion=8.0.0    deviceName=ad0117020ce12d59ec    appPackage=com.sec.android.app.launcher    appActivity=com.sec.android.app.launcher.activities.LauncherActivity
    ...    deviceId=10.108.172.37    automationName=UiAutomator2

Capture Screenshot myAIS
    Open Application    @{URL}    platformName=android    androidVersion=8.0.0    deviceName=ad0117020ce12d59ec    appPackage=com.ais.mimo.eservice    appActivity=com.ais.mimo.eservice.module.login.activity.LoginActivity
    ...    deviceId=10.108.172.37
    Launch Application
    Sleep    10 second

Dial*121#
    Open Application    @{URL}    platformName=android    androidVersion=8.0.0    deviceName=ad0117020ce12d59ec    appPackage=com.samsung.android.contacts    appActivity=com.android.dialer.DialtactsActivity
    ...    deviceId=10.108.172.37    automationName=UiAutomator2    newCommandTimeout=500
    Click Element At Coordinates    874    1786
    Wait Until Page Contains Element    //android.widget.RelativeLayout[@content-desc="Asterisk"]
    Sleep    1 second
    Click Element    //android.widget.RelativeLayout[@content-desc="Asterisk"]
    Sleep    1 second
    Click Element    //android.widget.RelativeLayout[@content-desc="1"]
    Sleep    1 second
    Click Element    //android.widget.RelativeLayout[@content-desc="2"]
    Sleep    1 second
    Click Element    //android.widget.RelativeLayout[@content-desc="1"]
    Sleep    1 second
    Click Element    //android.widget.RelativeLayout[@content-desc="Pound"]
    Sleep    1 second
    Click Element    //android.widget.FrameLayout[@content-desc="Call button"]
    Sleep    1 second
    Wait Until Page Contains Element    com.android.phone:id/dialog_message
    Comment    ${text_before}    Get Text    com.android.phone:id/dialog_message
    Comment    Capture Page Screenshot    balance_before.png
    Comment    Click Element    android:id/button2
    Comment    Close Application
    Comment    Return From Keyword    ${text_before}

Play Youtube
    Open Application    @{URL}    platformName=android    androidVersion=8.0.0    deviceName=ad0117020ce12d59ec    appPackage=com.google.android.youtube    appActivity=com.google.android.apps.youtube.app.WatchWhileActivity
    ...    deviceId=10.108.172.37    newCommandTimeout=500
    Click Element    com.google.android.youtube:id/menu_item_1
    Input Text    com.google.android.youtube:id/search_edit_text    BlackPink How You Like That
    Press Keycode    66
    Sleep    10 second
    Click Element At Coordinates    487    391
    Sleep    15 second
    Run Keyword And Ignore Error    //android.widget.LinearLayout[@content-desc="Skip ad"]/android.widget.ImageView
    Sleep    15 second
    Run Keyword And Ignore Error    //android.widget.LinearLayout[@content-desc="Skip ad"]/android.widget.ImageView
    Sleep    4 minute
    Close Application

FileSave
    createFile    C:\Users\admin\Desktop\LTC\balance.txt    @{text}    encoding=UTF-8

Dial*121#after
    Open Application    @{URL}    platformName=android    androidVersion=8.0.0    deviceName=ad0117020ce12d59ec    appPackage=com.samsung.android.contacts    appActivity=com.android.dialer.DialtactsActivity
    ...    deviceId=10.108.172.37
    Click Element At Coordinates    874    1786
    Wait Until Page Contains Element    //android.widget.RelativeLayout[@content-desc="1"]
    Sleep    10 second
    Click Element    //android.widget.RelativeLayout[@content-desc="Asterisk"]
    Sleep    1 second
    Click Element    //android.widget.RelativeLayout[@content-desc="1"]
    Sleep    1 second
    Click Element    //android.widget.RelativeLayout[@content-desc="2"]
    Sleep    1 second
    Click Element    //android.widget.RelativeLayout[@content-desc="1"]
    Sleep    1 second
    Click Element    //android.widget.RelativeLayout[@content-desc="Pound"]
    Sleep    1 second
    Click Element    //android.widget.FrameLayout[@content-desc="Call button"]
    Sleep    1 second
    Wait Until Page Contains Element    com.android.phone:id/dialog_message
    ${text_after}    Get Text    com.android.phone:id/dialog_message
    Capture Page Screenshot    balance_after.png
    Click Element    android:id/button2
    Close Application
    Return From Keyword    ${text_after}

Play Calculator
    Open Application    @{URL}    platformName=android    androidVersion=8.1.0    deviceName=emulator-5554    appPackage=com.android.calculator2    appActivity=com.android.calculator2.Calculator
    ...    automationName=UiAutomator2    newCommandTimeout=500
    Click Element    //android.widget.LinearLayout[@content-desc="Numbers and basic operations"]/android.view.ViewGroup[1]/android.widget.Button[1]
    Click Element    //android.widget.LinearLayout[@content-desc="Numbers and basic operations"]/android.view.ViewGroup[1]/android.widget.Button[5]
    Click Element    //android.widget.Button[@content-desc="divide"]
    Click Element    //android.widget.LinearLayout[@content-desc="Numbers and basic operations"]/android.view.ViewGroup[1]/android.widget.Button[6]
    Sleep    10 second
    Click Element    //android.widget.Button[@content-desc="delete"]
    Click Element    //android.widget.LinearLayout[@content-desc="Numbers and basic operations"]/android.view.ViewGroup[1]/android.widget.Button[5]
    Click Element    //android.widget.Button[@content-desc="equals"]
    Sleep    15 second
    Capture Page Screenshot    first_problem.png
    Sleep    4 minute
    Click Element    //android.widget.Button[@content-desc="clear"]
    Sleep    10 second
    Close Application
