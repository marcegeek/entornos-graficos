#!/bin/sh

if [[ "$#" -ne "3" ]]; then
   echo Uso: generar-datos-alumno.sh nombre_apellido legajo email
   exit 1
fi

nombre=$1
legajo=$2
email=$3

echo "Nombre y apellido: $nombre<br>\nLegajo: $legajo<br>\nE-mail: $email"
