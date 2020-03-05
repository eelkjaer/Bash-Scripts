#!/bin/bash 
#title           :JavaProjectGenerator.sh
#description     :Generate required java classes for your project.
#author		 :Emil Elkjær Nielsen
#date            :05032020
#version         :0.1   
#usage		 :bash JavaProjectGenerator.sh
#suggested alias	:jpg
#==============================================================================

CLASSES= read -p "Antal klasser: " CLASSES

COUNTER=0
while [  $COUNTER -lt $CLASSES ]; do
	CLASSNAME= read -p "Indtast navn på klassen: " CLASSNAME

cat > $CLASSNAME.java << EOF
public class $CLASSNAME{

	public $CLASSNAME(){
		//Constructor done. Your welcome ;)
	}
}
EOF
	let COUNTER+=1 
done

cat > Main.java << EOF
public class Main{

	public static void main(String[] args){
		//TODO: Make stuff do stuff
	}
}
EOF