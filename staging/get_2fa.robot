*** Settings ***
Library   ../GoogleAuthenticator.py
Library   Dialogs
*** Variables ***
${stg_testaccount}     HI4L5IKF4SQOLEFU
${stg_testaccount2}    FAAVQ2B36ZJRVHEB
${stg_testaccount3}    GYN5SY7WSX4R2LZY
${stg_testaccount4}    4ESOSYHGPYL3W5C3
${stg_testaccount8}    UIRZZP2YHBJTWEDL

*** Test Cases ***
Stg TestAccount
   [Tags]  testaccount
   ${2fa_number}=  Request 2fa  ${stg_testaccount} 
   Log To Console    Your 2fa: ${2fa_number}

Stg TestAccount2
   [Tags]  testaccount2
   ${2fa_number}=  Request 2fa  ${stg_testaccount2} 
   Log To Console    Your 2fa: ${2fa_number}

Stg TestAccount3
   [Tags]  testaccount3
   ${2fa_number}=  Request 2fa  ${stg_testaccount3} 
   Log To Console    Your 2fa: ${2fa_number}

Stg TestAccount4
   [Tags]  testaccount4
   ${2fa_number}=  Request 2fa  ${stg_testaccount4} 
   Log To Console    Your 2fa: ${2fa_number}

Stg TestAccount8
   [Tags]  testaccount8
   ${2fa_number}=  Request 2fa  ${stg_testaccount8} 
   Log To Console    Your 2fa: ${2fa_number}


*** Keywords ***

Request 2fa
   [Arguments]  ${srcret}
   ${2fa_number}=   Get 2FA    ${srcret}
   [Return]  ${2fa_number}
