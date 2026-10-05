#!/usr/bin/bash

mkdir Sorted-Documents Sorted-Documents/Documents Sorted-Documents/Images Sorted-Documents/Audio Sorted-Documents/Spreadsheets
for file in organizer_test_environment/*;
do 
    if [[ $file == *.txt || $file == *.pdf || $file == *.docx || $file == *.PDF ]];then
        mv $file Sorted-Documents/Documents
    elif [[ $file == *.jpg || $file == *.png || $file == *.JPG ]];then
        mv $file Sorted-Documents/Images
    elif [[ $file == *.mp3 || $file == *.wav ]];then
        mv $file Sorted-Documents/Audio
    elif [[ $file == *.xlsx || $file == *.csv ]];then
        mv $file Sorted-Documents/Spreadsheets
    fi
done