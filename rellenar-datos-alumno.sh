#!/bin/sh

nombre=$1
legajo=$2
email=$3

sed -e "s/{student-data}/Nombre y apellido: $nombre<br>\nLegajo: $legajo<br>\nE-mail: $email/" < trabajo.md > trabajo-generated.md
