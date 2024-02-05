#!/bin/bash

GITHUB_USER=erazoex

API_URL="https://api.github.com/users/$GITHUB_USER"

response=$(curl -s "$API_URL")
id=$(echo "$response" | jq -r '.id')
created_at=$(echo "$response" | jq -r '.created_at')

# Imprime el mensaje
mensage="Hola $GITHUB_USER. User ID: $id. Cuenta fue creada el: $created_at."

fecha=$(date +"%Y%m%d")

ARCHIVO="/tmp/$fecha/saludos.log"
touch $ARCHIVO
# Crea el log file en /tmp con la salida del mensaje
echo "$mensage" >> $ARCHIVO

cat $ARCHIVO

# cronjob
# */5 * * * * /Repositories/so1_actividades_201807253/actividad2/actividad.sh