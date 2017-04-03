#!/bin/bash

#Mastermind:

echo -e '\x1B[4;36mWelcome to Mastermind\x1B[0m'
  declare -a marbles
  marbles=( $redMarb $orangeMarb $yellowMarb $greenMarb $lightBlueMarbb $blueMarb $indigoMarb $violetMarb )
  guessNum=1
  redMarb='r'
  orangeMarb='o'
  yellowMarb='y'
  greenMarb='g'
  lightBlueMarb='lb'
  blueMarb='b'
  indigoMarb='i'
  violetMarb='v'
  numBlackMarbs=0
  numWhiteMarbs=0
  newLine='\n'

  answer=( $redMarb $orangeMarb $yellowMarb $greenMarb $lightBlueMarb )
  function_turn () {
    echo -n 'Place your guess accordingly: '
    read userGuess
    read -a guessArr <<<$userGuess
    prevGuesses[guessNum]=$newLine$userGuess
    echo -e '\x1B[1;94myour guess: \x1B[0m'${guessArr[*]}
    echo -e '\x1B[1;95mprevious guesses: \x1B[0m'${prevGuesses[*]}
  }
  function_checkBlackMarbs () {
    if [[ ${guessArr[0]} == ${answer[0]} ]]
    then
      ((numBlackMarbs++))
    fi
    if [[ ${guessArr[1]} == ${answer[1]} ]]
    then
      ((numBlackMarbs++))
    fi
    if [[ ${guessArr[2]} == ${answer[2]} ]]
    then
      ((numBlackMarbs++))
    fi
    if [[ ${guessArr[3]} == ${answer[3]} ]]
    then
      ((numBlackMarbs++))
    fi
    if [[ ${guessArr[4]} == ${answer[4]} ]]
    then
      ((numBlackMarbs++))
    fi
  }
  function_checkWhiteMarbs () {
    if [[ " ${answer[*]} " == *" ${guessArr[0]} "* && ${guessArr[0]} != ${answer[0]} ]]
    then
      ((numWhiteMarbs++))
    fi
    if [[ " ${answer[*]} " == *" ${guessArr[1]} "* && ${guessArr[1]} != ${answer[1]} ]]
    then
      ((numWhiteMarbs++))
    fi
    if [[ " ${answer[*]} " == *" ${guessArr[2]} "* && ${guessArr[2]} != ${answer[2]} ]]
    then
      ((numWhiteMarbs++))
    fi
    if [[ " ${answer[*]} " == *" ${guessArr[3]} "* && ${guessArr[3]} != ${answer[3]} ]]
    then
      ((numWhiteMarbs++))
    fi
    if [[ " ${answer[*]} " == *" ${guessArr[4]} "* && ${guessArr[4]} != ${answer[4]} ]]
    then
      ((numWhiteMarbs++))
    fi
  }
  function_sequence () {
    function_generateSolution
    while [ $guessNum -lt 9 ]
    do
      echo -e '\x1B[0;33mthe answer has been randomly generated\x1B[0m'
      echo -e "\x1B[1;92myou are on guess ${guessNum} of 8\x1B[0m"
      echo -e "\x1B[1;32myou have \x1B[0m${numBlackMarbs} \x1B[1;32mthat are in the right place\x1B[0m"
      echo -e "\x1B[1;34myou have \x1B[0m${numWhiteMarbs} \x1B[1;34mthat are in the answer but are currently in the wrong place\x1B[0m"
      function_turn
      numBlackMarbs=0
      numWhiteMarbs=0
      function_checkBlackMarbs
      function_checkWhiteMarbs
      function_CheckIfWinOrLoss
      ((guessNum++))
    done
  }
  function_CheckIfWinOrLoss () {
    if [[ $numBlackMarbs == 5 ]]
    then
      echo -e "\x1B[45m\x1B[0;104mYou Win!!!\x1B[0m"
      function_promptForNextGame
    fi
    if [[ $guessNum == 8 ]]
    then
      echo -e "\x1B[46m\x1B[0;104mLame\x1B[0m"
      function_promptForNextGame
    fi
  }
  function_promptForNextGame () {
    echo -e '\x1B[0;92mWanna go again SmartyPants?( y / n )\x1B[0m'
    read response
    if [[ $response == 'y' ]]
    then
      numBlackMarbs=0
      numWhiteMarbs=0
      function_sequence
    fi
    if [[ $response == 'n' ]]
    then
      exec bash
    fi
  }
  function_sequence
exec bash
