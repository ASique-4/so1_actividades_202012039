#!/bin/bash

# Definir el nombre del pipe
PIPE="chat_pipe"

# Verificar si el pipe ya existe
if [[ ! -p $PIPE ]]; then
    # Si no existe, crear el pipe
    mkfifo $PIPE
fi

# Bucle para leer mensajes y enviarlos al otro participante
while true; do
    # Leer el mensaje del pipe y mostrarlo
    read mensaje < $PIPE
    echo "$mensaje"
    
    # Leer el mensaje del usuario y enviarlo al pipe
    read -p "Usuario 2: " mensaje
    echo "Usuario 2: $mensaje" > $PIPE
done