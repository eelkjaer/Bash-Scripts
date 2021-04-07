#!/bin/bash 
#title           :Create_React_App.sh
#description     :Generate required java classes for your project.
#author		 :Emil Elkjær Nielsen
#date            :07042021
#version         :0.1   
#usage		 :bash JavaProjectGenerator.sh
#suggested alias	:crp, create-react-app
#==============================================================================

#Kontrollere om der er givet et argument
if [[ -n $1 ]]; then
	NAME="$1"
else
	#Beder om et projektnavn
	NAME= read -p "Project name: " NAME
fi


#Opretter et react projekt
npx create-react-app $NAME --use-npm