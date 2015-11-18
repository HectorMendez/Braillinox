#!/bin/bash


#This is a modification and restructuration of master instalation script
#The Idea ist just apply permitions and type ./ in command line and wait for the instalation
#For the moment the project is just manteined by Hector Mendez, i am in searching for developers and interrest people for the project
#Licenced under GPLv3
#Check the internet conmection
#ping 8.8.8.8
#if ping gives package dates, continue the proces, this part i do not have an idea about of how to do. 


date
#if date is not correct launch the applet to configure the hour 

#installation must be in a pathern directory



cd
./soportegcc.sh
echo "gcc is already installed"
echo "audio suppor will be installed comming son"
cd
./soporteaudio.sh
echo "such sems the process already have finished"
echo "at this point, you are be careful because the script is not tester of fails, ist just installed"
echo "neither resolve conflicts about the download  and this download is about 260mb"

