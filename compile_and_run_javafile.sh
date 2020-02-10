#!/bin/bash

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