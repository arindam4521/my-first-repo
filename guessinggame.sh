#!/bin/bash
fileinput() {
    ans_rt=$(ls -A|wc -l)
    while true;
    do
        echo "Hi User! input the number of files present in the current working directory?"
        read  number_guessed
        if [[ $number_guessed ]] && [ $number_guessed -eq $number_guessed 2>/dev/null ]
            then
                if [ $number_guessed -lt $ans_rt ]
                then
                    echo "Try Again!.....Your input is less than the true number"
                continue;
                elif [ $number_guessed -gt $ans_rt ]
                then
                    echo "Try Again!....Your input is greater than the true number"
                continue;
                else
                    echo " Congratulations User!........Your are right!"
                break;
                fi
            else
                echo "Wrong input entered. Please pass integer input only"
        fi
    done
}
fileinput