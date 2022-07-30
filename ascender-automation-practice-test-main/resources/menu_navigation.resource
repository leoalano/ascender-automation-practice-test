*** Settings ***
Resource    ../page_objects/navigation_page.resource

*** Keywords ***
I click the title "women"
    Click Element      ${TITLE_WOMEN}
    
I verify the page contain title_block "women"
    Page Should Contain         You will find here all woman fashion collections.

I put mouse over title "women"
    Mouse Over         ${TITLE_WOMEN}   

I click on title "tops"
    Click Element      ${TITLE_TOPS}

I click on title "T-shirts"
    Click Element      ${TITLE}

I verify the page contain title "Tops"
    Page Should Contain         Tops

I verify the page contain T-shirts
    Page Should Contain         T-shirts

I click on title "Blouses"
    Click Element      ${TITLE_BLOUSES}

I verify the page contain blouses
    Page Should Contain         Blouses

I click on title "Dresses"
    Click Element      ${TITLE_DRESSES}

I verify the page contain Dresses
    Page Should Contain         Dresses

I click on title "Casual Dresses"
    Click Element      ${TITLE_CASUAL_DRESSES}

I verify the page contain Casual Dresses
    Page Should Contain        Casual Dresses
    
I click on title "Evening Dresses"
    Click Element      ${TITLE_EVENING}

I verify the page contain Evening Dresses
    Page Should Contain         Evening Dresses

I click on title "Summer Dresses"
   Click Element      ${TITLE_SUMMER}

I verify the page contain Summer Dresses
    Page Should Contain         Summer Dresses