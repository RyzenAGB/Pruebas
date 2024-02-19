#!/bin/bash

#Se necesita la carpeta Tarea#993 para su correcta ejecucion

while true
do
echo -e "\033[40m\033[1;32m\n███╗   ███╗███████╗███╗   ██╗██╗   ██╗
████╗ ████║██╔════╝████╗  ██║██║   ██║
██╔████╔██║█████╗  ██╔██╗ ██║██║   ██║
██║╚██╔╝██║██╔══╝  ██║╚██╗██║██║   ██║
██║ ╚═╝ ██║███████╗██║ ╚████║╚██████╔╝
╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝ 
                                      \033[0m"
echo -e "\033[47m\033[31m0- Salir\033[0m"
echo -e "\033[47m\033[30m1.- Hola mundo\033[0m"
echo -e "\033[47m\033[30m2.- Saludo con variables\033[0m"
echo -e "\033[47m\033[30m3.- Variables\033[0m"
echo -e "\033[47m\033[30m4.- Arrays\033[0m"
echo -e "\033[47m\033[30m5.- Otros usos de variables\033[0m"
echo -e "\033[47m\033[30m6.- Operaciones aritméticas\033[0m"
echo -e "\033[47m\033[30m7.- Operaciones lógicas\033[0m"
echo -e "\033[47m\033[30m8.- Condicional if-else\033[0m"
echo -e "\033[47m\033[30m9.- Comprobar si un fichero existe\033[0m"
echo -e "\033[47m\033[30m10.- Estructura case\033[0m"
echo -e "\033[47m\033[30m11.- Bucle for\033[0m"
echo -e "\033[47m\033[30m12.- Bucle while\033[0m"
echo -e "\033[47m\033[30m13.- Bucle until\033[0m"
echo -e "\033[47m\033[30m14.- Bucle-estructura select\033[0m"
echo -e "\033[47m\033[30m15.- Funciones\033[0m"
echo -e "\033[47m\033[30m16.- Librerías\033[0m"
echo -e "\033[47m\033[30m17.- Señales\033[0m"
echo -e "\033[47m\033[30m18.- Colores\033[0m"


echo -n "Ingresa tu opcion: "
read krillin
case $krillin in
    0) 
	echo -e "\033[40m\033[32mSaliendo..\033[0m"
	break
	;;
    1)
        echo -e "\033[40m\033[32mEjecutando Script: Hola mundo\033[0m"
        source 1.sh
        ;;
    2)
        echo -e "\033[40m\033[32mEjecutando Script: Saludo con variables\033[0m"
        source 2.sh
        ;;
    3)
        echo -e "\033[40m\033[32mEjecutando Script: Variables\033[0m"
        source 3.sh
        ;;
    4)
        echo -e "\033[40m\033[32mEjecutando Script: Arrays\033[0m"
        source 4.sh
        ;;
    5)
        echo -e "\033[40m\033[32mEjecutando Script: Otros usos de variables\033[0m"
        source 5.sh
        ;;
    6)
        echo -e "\033[40m\033[32mEjecutando Script: Operaciones aritméticas\033[0m"
        source 6.sh
        ;;
    7)
        echo -e "\033[40m\033[32mEjecutando Script: Operaciones lógicas\033[0m"
        source 7.sh
        ;;
    8)
        echo -e "\033[40m\033[32mEjecutando Script: Condicional if-else\033[0m"
        source 8.sh
        ;;
    9)
        echo -e "\033[40m\033[32mEjecutando Script: Comprobar si un fichero existe\033[0m"
        source 9.sh
        ;;
    10)
        echo -e "\033[40m\033[32mEjecutando Script: Estructura case\033[0m"
        source 10.sh
        ;;
    11)
        echo -e "\033[40m\033[32mEjecutando Script: Bucle for\033[0m"
        source 11.sh
        ;;
    12)
        echo -e "\033[40m\033[32mEjecutando Script: Bucle while\033[0m"
        source 12.sh
        ;;
    13)
        echo -e "\033[40m\033[32mEjecutando Script: Bucle until\033[0m"
        source 13.sh
        ;;
    14)
        echo -e "\033[40m\033[32mEjecutando Script: Bucle-estructura select\033[0m"
        source 14.sh
        ;;
    15)
        echo -e "\033[40m\033[32mEjecutando Script: Funciones\033[0m"
        source 15.sh
        ;;
    16)
        echo -e "\033[40m\033[32mEjecutando Script: Librerías\033[0m"
        source 16.sh
        ;;
    17)
        echo -e "\033[40m\033[32mEjecutando Script: Señales\033[0m"
        source 17.sh
        ;;
    18)
        echo -e "\033[40m\033[32mEjecutando Script: Colores\033[0m"
        source 18.sh
        ;;
    *)
        echo -e "\033[40m\033[31mError en la eleccion\033[0m"
        ;;
esac
done
