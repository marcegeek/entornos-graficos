#!/bin/sh

if [ "$#" -ne "3" ] && [ ! -f "datos-alumno" ]; then
   echo Uso: generar-trabajo.sh nombre_apellido legajo email
   exit 1
fi

if [ ! -f "datos-alumno" ]; then
   $(./generar-datos-alumno.sh "$1" "$2" "$3")
fi
datos_alumno=$(sed -e 's/nombre:/Nombre y apellido: /'\
  -e 's/legajo:/Legajo: /'\
  -e 's/email:/E-mail: /'\
  -e "s/$/<br>\\\\n/g" datos-alumno | tr -d '\n')

indice=$(./generar-indice.sh)

sed -e "s/{student-data}/$datos_alumno/" -e "s/{generated-index}/$indice/" < trabajo.md > trabajo-generated.md
