#!/bin/bash

# Credenciales del servidor SFTP
HOST="eu-central-1.sftpcloud.io"
USERNAME="2388baf2b5764001be859a265648a65b"
PASSWORD="ZekeS7yj9vL6GzJhF8JPrAUDeZApxbGO"
REMOTE_PATH="/appGasPedidos.war"  # Ruta del archivo en el servidor
LOCAL_PATH="./appGasPedidos.war"  # Ruta donde se guardará el archivo localmente

# Descargando el archivo usando curl y evitando la verificación del certificado (-k)
curl -k --user "$USERNAME:$PASSWORD" "sftp://$HOST$REMOTE_PATH" --output "$LOCAL_PATH"

# Verificar si la descarga fue exitosa
if [ $? -eq 0 ]; then
    echo "Archivo descargado exitosamente: $LOCAL_PATH"
else
    echo "Error al descargar el archivo"
    exit 1
fi
