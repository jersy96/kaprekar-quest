#!/bin/bash

# Script para desplegar a Firebase Hosting y actualizar el tag deployed-to-staging

set -e

echo "🏗️  Building Flutter web with staging environment..."

# Build con variables de entorno de staging
flutter build web --release

echo "🚀 Iniciando despliegue a Firebase Hosting..."

# Ejecutar el comando de despliegue
firebase deploy --only hosting --project math-tools-f91f0

# Verificar si el comando fue exitoso
if [ $? -eq 0 ]; then
    echo "✅ Despliegue exitoso. Actualizando tag deployed-to-staging..."

    # Eliminar el tag local si existe
    git tag -d deployed-to-staging 2>/dev/null || echo "Tag local no existía"

    # Eliminar el tag remoto si existe
    git push origin --delete deployed-to-staging 2>/dev/null || echo "Tag remoto no existía"

    # Crear el tag en el commit actual (HEAD)
    git tag deployed-to-staging

    # Pushear el tag al repositorio remoto
    git push origin deployed-to-staging

    # Pushear la rama actual
    git push

    echo "✅ Tag deployed-to-staging actualizado y subido al repositorio remoto"
else
    echo "❌ Error en el despliegue. No se actualizó el tag."
    exit 1
fi
