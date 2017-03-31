#User-Input

  #1 && #2:
    #Create a simple script that combines multiple user inputs and echoes them back together:
    echo -n "Enter Name: "
    read title
    echo -n "Enter Age: "
    read age
    space=' '
    newOne=$title$space$age
    echo $newOne

  #3:
    #
    cat ../exercises/sonnets.txt | . ./not-stdin

  #4:
    #
    ls -l | awk '{print $1}'
    ls -l | awk '{print $2}'
    ls -l | awk '{print $3}'
    ls -l | awk '{print $4}'
    ls -l | awk '{print $5}'
    ls -l | awk '{print $6}'
    ls -l | awk '{print $9}'                
