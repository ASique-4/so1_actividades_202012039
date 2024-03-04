#!/bin/bash

# Definir el nombre del pipe
PIPE="chat_pipe"

# Verificar si el pipe ya existe
if [[ ! -p $PIPE ]]; then
    # Si no existe, crear el pipe
    mkfifo $PIPE
fi

# Limpiar el pipe antes de empezar
echo "" > $PIPE

# Bucle para leer mensajes y enviarlos al otro participante
while true; do
    # Leer el mensaje del usuario y enviarlo al pipe
    read -p "Usuario 1: " mensaje
    echo "Usuario 1: $mensaje" > $PIPE

    # Leer el mensaje del pipe y mostrarlo
    read mensaje < $PIPE
    echo "$mensaje"
done