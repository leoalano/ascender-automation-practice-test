*** Settings ***
Library                FakerLibrary

*** Variables ***
${CREATE_EMAIL_BUTTON}             id=SubmitCreate
${INPUT_GENDER}                    xpath=//input[@type='radio'][contains(@id,'gender1')]
${FIRST_NAME_FIELD}                id=customer_firstname
${FIRST_NAME}                      Xurupita
${LAST_NAME_FIELD}                 id=customer_lastname
${LAST_NAME}                       Cabulosa
${PASSWORD_FIELD}                  id=passwd
${PASSWORD}                        123456
${COMPANY_FIELD}                   id=company
${COMPANY}                         Ascender TI
${ADDRESS_FIELD}                   id=address1
${ADDRESS}                         Rua das Xurupitas 1234
${CITY_FIELD}                      id=city
${CITY}                            Xurupitanopolis
${STATE_FIELD}                     id=id_state
${STATE_NAME}                      Alabama
${ZIP_POSTAL_FIELD}                id=postcode
${ZIP_CODE}                        00000
${PHONE_NUMBER_FIELD}              id=phone
${PHONE}                           984739866
${REGISTER_BUTTON}                 id=submitAccount
${MY_ACCOUNT_VALIDATE}             id=My account
${PHONE_NUMBER_REQUIRED}           You must register at least one phone number.
${LAST_NAME_REQUIRED}              lastname is required
${PASSWORD_REQUIRED}               passwd is required
${FIRST_NAME_REQUIRED}             firstname is required
${ADDRESS_IS_REQUIRED}             address1 is required
${CITY_IS_REQUIRED}                city is required
${STATE_IS_REQUIRED}               This country requires you to choose a State 
${ZIP_CODE_IS_REQUIRED}            The Zip/Postal code you've entered is invalid. It must follow this format: 00000