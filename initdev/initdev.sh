#!/bin/bash



echo  "                        *******************************************
                        ******     welcome to initdev     *********
                        *******************************************  

  "


if [ "$#" -eq 0 ]; then 
echo "Expected arguments, please check the help : initdev –help"
exit 1
 fi




if [ $# -eq 1 ]
       then
         if [[ $1 != "-help" ]]; 
then
        mkdir -p $1/{bin,gitignores,sources,}
        touch $1/main
        touch $1/license
        touch $1/makefile
        touch $1/install.sh
        exit 0
else
echo  "----------------------------------------------------------------------------------------------------------------------------------------
 *Name   : initdev is an application that allows to create a new project with preconfiguration given in a part 'functionalities', in addition, it creates an arboressence that has some specified architecture.
     * Syntax : ./initdev nameofproject Type_of_arg
     * help : The help will help the user to understand the operation and launching of the initdev program.
     * arg    : -C : The creation of the project in C language.
                -C++ : The creation of the project in c++ language.
                -latex : creating of latex file.
                -beamer: creating of projet beamer.
 
     * author : SARRA CHABANE CHAOUCHE   
      * E-mail : sarrachabanechaouche@gmail.com.
-----------------------------------------------------------------------------------------------------------------------------------------------"
  
    fi
fi


if [ $# -eq 2 ]; then

 mkdir -p $1/{bin,gitignores,sources}
    touch $1/LICENSE
    touch $1/makefile
    touch $1/install.sh

    case "$2" in
        "-C") cp ./sources/main.c $1/main.c
        ;;
        "-C++") cp ./sources/main.cpp $1/main.cpp
        ;;
        "-CPP") cp ./sources/main.cpp $1/main.cpp
        ;;
        "-Py") cp ./sources/main.py $1/main.py
        ;;
        "-Latex") cp ./sources/latexMin.tex $1/main.tex
        ;;
        "-BEAMER") cp ./sources/beamer.tex $1/main.tex
        ;;
        "-GPL") cp ./licenses/GPL $1/LICENSE
	;;
	"-MIT") cp ./licenses/MIT $1/LICENSE
 	;;
       *) 
        echo "Uknown arguments, please check the help : initdev –help"
          
        exit 1
esac
fi

