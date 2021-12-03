*** Settings ***
Library   ../GoogleAuthenticator.py
Library   Dialogs
*** Variables ***
${sandbox_testaccount}     W3DQ7DWJSGMMHKWH
${sandbox_testaccount2}    2NL535TQQBHR5TMO
${sandbox_testaccount3}    RHE7C7OIQNLTL44Z
${sandbox_testaccount4}    W6IQOUS4RZJES63D

*** Test Cases ***
TestAccount
   [Tags]  testaccount
   ${2fa_number}=  Request 2fa  ${sandbox_testaccount} 
   Log To Console    Your 2fa: ${2fa_number}

TestAccount2
   [Tags]  testaccount2
   ${2fa_number}=  Request 2fa  ${sandbox_testaccount2} 
   Log To Console    Your 2fa: ${2fa_number}

TestAccount3
   [Tags]  testaccount3
   ${2fa_number}=  Request 2fa  ${sandbox_testaccount3} 
   Log To Console    Your 2fa: ${2fa_number}

TestAccount4
   [Tags]  testaccount4
   ${2fa_number}=  Request 2fa  ${sandbox_testaccount4} 
   Log To Console    Your 2fa: ${2fa_number}


*** Keywords ***

Request 2fa
   [Arguments]  ${srcret}
   ${2fa_number}=   Get 2FA    ${srcret}
   [Return]  ${2fa_number}
