#!/bin/bash


permi(){
	local nn=$1
	case $nn in
	      	1)
		      echo "	Ejecucion"
		      ;;
		2)
			echo "	Escritura"
			;;
		3)
			echo "	Ejecucion, Escritura"
			;;
		4)
			echo "	Lectura"
			;;
		5)
			echo "	Lectura, Ejecucion"
			;;
		6)
			echo "	Lectura, Escritura"
			;;
		7)
			echo "	Lectura, Escritura, Ejecucion"
			;;
	esac

}

echo -e "Nombre: $(ls -al menu.sh | awk '{print $9}')"
tipo=$(ls -al menu.sh |awk 'NR==1 {print substr($0,1,1)}')

case $tipo in
	"-")
		echo -e "Tipo: Archivo"
		;;
	"d")
		echo -e "Tipo: Directorio"
		;;
	"l")
		echo -e "Tipo: Enlace"
		;;
	"c")
		echo -e "Tipo: Dispositivo de caracteres"
		;;
	"s") 
		echo -e "Tipo: Socket"
		;;
	"p")
		echo -e "Tipo: Tuberia"
		;;
	"b")
		echo -e "Dispositivo de bloques"
		;;
esac


bd=$(stat -c %W menu.sh)
echo -e "$bd"
#mbd=$(date -d "$(date -d @$bd +'%Y-%m-%d %H:%M:%S')" "+%e de %B %Y")
#echo -e "Fecha de creacion: $mbd"
mbd=$(date -d "@$bd" "+%e de %B %Y")
echo -e "Fecha de creacion: $mbd"

echo "Tamaño: $(stat -c %s menu.sh) Bytes"
echo -e "Permisos:"
echo "Usuario($(stat -c %U menu.sh)):"
permi $(stat -c %a menu.sh | cut -c 1-1)
echo "Grupo(($(stat -c %G menu.sh)):"
permi $(stat -c %a menu.sh | cut -c 2-2)
echo "Otros:"
permi $(stat -c %a menu.sh | cut -c 3-3)
