#!/bin/bash
#How they work:

  # The two common actions related to variables are "setting" and "reading" or "declaring" and "calling".

  #Syntax:

    #1:
        #Declaration of variables is fairly straightforward (variable1=jello),
      #they are also not case specific but preference can be solely in the hands of whoever is going to be calling them. When calling with variables in the bash terminal we must use a "$"
      #($variable // jello)
      variable1='jello'
      echo $0 ::\n var1 : $variable1

    #2:
      #Create a script that prints a random word:
      gshuf /usr/share/dict/words | tail -1

    #3:
      #receive a number as an input:
      echo -n 'Please enter a number: '
      read number
      grep "^[A-Za-z]\{$number\}$" /usr/share/dict/words | gshuf | tail -1

    #4:
      format=`date +%Y-%m-%d`
      cp ../bar.txt ${format}bar.txt

    #5:
      
