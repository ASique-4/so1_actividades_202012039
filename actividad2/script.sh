#!/bin/bash

# Lea la variable GITHUB_USER
read -p "Ingrese el nombre de usuario de GitHub: " GITHUB_USER

# Consulte la URL de GitHub API
API_URL="https://api.github.com/users/$GITHUB_USER"
JSON_DATA=$(curl -s $API_URL)

# Extraer datos del JSON
USER_ID=$(echo $JSON_DATA | jq -r '.id')
CREATED_AT=$(echo $JSON_DATA | jq -r '.created_at')

# Imprimir el mensaje
echo "Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT."

# Crear log file
LOG_DIR="/tmp/$(date +'%Y%m%d')"
LOG_FILE="$LOG_DIR/saludos.log"

# Crear directorio si no existe
mkdir -p $LOG_DIR

# Agregar la salida al log file
echo "$(date +'%Y-%m-%d %H:%M:%S'): Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT." >> $LOG_FILE

# Mensaje de éxito
echo "Datos del usuario guardados en $LOG_FILE."

# Agregar el cronjob (cada 5 minutos)
CRON_JOB="*/5 * * * * $(pwd)/script.sh"
(crontab -l ; echo "$CRON_JOB") | crontab -
echo "Cronjob añadido para ejecutar el script cada 5 minutos."
