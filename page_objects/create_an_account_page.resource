*** Settings ***
Library                FakerLibrary

*** Variables ***
${CREATE_EMAIL_BUTTON}             SubmitCreate
${INPUT_GENDER}                    //input[@type='radio'][contains(@id,'gender1')]
${FIRST_NAME_FIELD}                customer_firstname
${FIRST_NAME}                      Xurupita
${LAST_NAME_FIELD}                 customer_lastname
${LAST_NAME}                       Cabulosa
${PASSWORD_FIELD}                  passwd
${PASSWORD}                        123456
${COMPANY_FIELD}                   company
${COMPANY}                         Ascender TI
${ADDRESS_FIELD}                   address1
${ADDRESS}                         Rua das Xurupitas 1234
${CITY_FIELD}                      city
${CITY}                            Xurupitanopolis
${STATE_FIELD}                     id_state
${STATE_NAME}                      Alabama
${ZIP_POSTAL_FIELD}                postcode
${ZIP_CODE}                        00000
${PHONE_NUMBER_FIELD}              phone
${PHONE}                           984739866
${REGISTER_BUTTON}                 submitAccount
${MY_ACCOUNT_VALIDATE}             My account
${PHONE_NUMBER_REQUIRED}           You must register at least one phone number.
${LAST_NAME_REQUIRED}              lastname is required
${PASSWORD_REQUIRED}               passwd is required
${FIRST_NAME_REQUIRED}              firstname is required