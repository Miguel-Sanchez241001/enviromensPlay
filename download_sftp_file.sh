#!/bin/bash

# Credenciales del servidor FTP
HOST="eu-central-1.sftpcloud.io"
USERNAME="297d46ea5d4d44609d52ec082e414ce6"
PASSWORD="wmiyStbwKPOsdJdcc3zIcbadzGE9WJ9g"
REMOTE_PATH="/appGasPedidos.war"  # Ruta del archivo en el servidor
LOCAL_PATH="./appGasPedidos.war"  # Ruta donde se guardará el archivo localmente

# Descargando el archivo usando curl y evitando la verificación del certificado (-k)
curl -k --user "$USERNAME:$PASSWORD" "ftp://$HOST:21$REMOTE_PATH" --output "$LOCAL_PATH"

# Verificar si la descarga fue exitosa
if [ $? -eq 0 ]; then
    echo "Archivo descargado exitosamente: $LOCAL_PATH"
else
    echo "Error al descargar el archivo"
    exit 1
fi
