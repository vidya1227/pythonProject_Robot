*** Test Cases ***
#Forloop1
#    : FOR   ${i}    IN RANGE    1   10
#    \  LOG TO CONSOLE  ${i}

#Forloop2
#    :FOR    ${i}    IN  1  2  3  4  5  6  7 8 9
#    \  log to console    ${i}

#Forloop3
#    @{items}    create list  1   2   3   4   5
#    : FOR    ${i}    IN  @{items}
#    \  log to console    ${i}

#Forloop4
#    : FOR    ${i}    IN  vidya  pavani  kritika supritha
#    \  log to console    ${i}


#Forloop6
#    @{namesList}    create list  vidya  pavani  kritika supritha
#    : FOR    ${i}    IN  @{namesList}
#    \  log to console    ${i}

Forloop7withExit
    @{items}    create list  1   2   3   4   5
    : FOR    ${i}    IN  @{items}
    \  log to console    ${i}
    \  exit for loop if    ${i}==3

