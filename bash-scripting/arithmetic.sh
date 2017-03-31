#!/bin/bash

#Arithmetic

  #1:
    #Create a simple script which will take two command line arguments and then multiply them together using each of the methods detailed above.
    a=$(( 4 * 5 ))
    echo '4 * 5 ' $a # 20
    a=$((3*5))
    echo '3*5 '$a # 15
    b=$(( a * 3 ))
    echo 'a * 3 '$b # 45
    b=$(( $a * 4 ))
    echo '$a * 4 '$b # 60
    (( b *= 3 ))
    echo 'this '$b # 180
    a=$(( 4 * 5 ))
    echo $a # 20

  #2:
    #Write a Bash script which will print tomorrows date. (Hint: use the command date)
    date -v +1d

  #3:
    #Remember when we looked at variables we discovered $RANDOM will return a random number. This number is between 0 and 32767 which is not always the most useful. Let's write a script which will use this variable and some arithmetic (hint: play with modulus) to return a random number between 0 and 100.
    RANGE=100
    number=$RANDOM
    let "number %= $RANGE"
    echo 'random number between 0 and 100: '$number

  #4:
    #Now let's play with the previous script. Modify it so that you can specify as a command line argument the upper limit of the random number. Can you make it so that a lower limit can be specified also? eg. if I ran ./random.sh 10 45 it would only return random numbers between 10 and 45.
    FLOOR=50
    while [ $number -le $FLOOR ]
    do
      number=$RANDOM
      let "number %= $RANGE"
    done
    echo 'random number between 50 and 100: '$number
