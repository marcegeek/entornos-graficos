#!/bin/sh

if [[ "$#" -ne "3" ]]; then
   echo Uso: generar-trabajo.sh nombre_apellido legajo email
   exit 1
fi

datos_alumno=$(./generar-datos-alumno.sh "$1" "$2" "$3")
indice=$(./generar-indice.sh)

sed -e "s/{student-data}/$datos_alumno/" -e "s/{generated-index}/$indice/" < trabajo.md > trabajo-generated.md
