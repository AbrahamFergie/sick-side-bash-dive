#!/bin/bash

#if-else:

  #1:
    #Create a Bash script which will take 2 numbers as command line arguments. It will print to the screen the larger of the two numbers.
    if [ $1 -gt $2 ]
    then
      echo $1 ' is greater'
    else
      echo $2 ' is greater'
    fi

  #2:
    #Create a Bash script which will accept a file as a command line argument and analyse it in certain ways. eg. you could check if the file is executable or writable. You should print a certain message if true and another if false.

    if [ -x $3 ]
    then
      echo 'file is executable'
    else
      echo 'file is not executable'
    fi

  #3:
    #Create a Bash script which will print a message based upon which day of the week it is (eg. 'Happy hump day' for Wedensday, 'TGIF' for Friday etc).
    dayOfTheWeek=$4
    case $dayOfTheWeek in
      Monday*)
        echo 'first day of the work week'
        ;;
      Tuesday*)
        echo 'this day is between monday and wednesday'
        ;;
      Wednesday*)
        echo 'Miercoles'
        ;;
      Thursday*)
        echo 'the day after hump day'
        ;;
      Friday*)
        echo 'day before the weekend'
        ;;
      Saturday*)
        echo 'chore day'
        ;;
      Sunday*)
        echo 'day of rest so to speak'
        ;;
    esac
