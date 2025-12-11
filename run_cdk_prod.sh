#!/bin/bash

# Script para ejecutar comandos CDK en el entorno de producción

# Activar entorno virtual si existe
if [ -d ".venv" ]; then
    source .venv/bin/activate
    echo "✅ Entorno virtual activado"
else
    echo "⚠️  Entorno virtual no encontrado. Crea uno con: python -m venv .venv"
    exit 1
fi

echo ""

# Ejecutar el comando CDK pasado como parámetro
if [ $# -eq 0 ]; then
    echo "🔧 Uso: ./run_cdk.sh [comando_cdk]"
    echo "📝 Ejemplos:"
    echo "   ./run_cdk.sh synth"
    echo "   ./run_cdk.sh deploy"
    echo "   ./run_cdk.sh diff"
    echo "   ./run_cdk.sh destroy"
else
    echo "copying env file"
    cp .env_prod .env
    echo "🚀 Ejecutando: cdk $@"
    echo "----------------------------------------"
    cdk "$@"
fi
