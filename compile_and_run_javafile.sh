#!/bin/bash 
#title           :compile_and_run_javafile.sh
#description     :Compiles and runs your java project
#author		 :Emil Elkjær Nielsen
#date            :05032020
#version         :0.1   
#usage		 :bash compile_and_run_javafile.sh
#suggested alias	:jcr
#==============================================================================

#Kontrollere om der er givet et argument
if [[ -n $1 ]]; then
	fileName="$1"
	className="${fileName%.*}"

	#Fejl hvis .java mangler fra filnavn
	if [[ $fileName != *.java ]]; then
		echo "Husk .java og prøv igen!"
	else
		#Compile, eksekverer og slut script
		javac $fileName && java $className
		exit 1
	fi
fi

#Reads entire user input
fileName= read -p "Indtast filnavn (.java): " fileName
#Removes .java extension
className="${fileName%.*}"


#Loops until valid input (.java file extension)
while [[ $fileName != *.java ]]; do
	echo "Husk .java og prøv igen!"
	fileName= read -p "Indtast filnavn (.java): " fileName
	className="${fileName%.*}"
done

#Compiles java file and runs the compiled class file
javac $fileName && java $className