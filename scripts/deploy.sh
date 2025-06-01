#!/bin/bash

set -e

# ativa virtualenv se existir
if [ -d venv ]; then
  echo "Ativando ambiente virtual venv..."
  source venv/Scripts/activate
else
  echo "Ambiente virtual venv nao existe."
  exit 1
fi

echo "Selecionando ou criando stack 'dev'..."
pulumi stack select dev || pulumi stack init dev

echo "Configurando variaves padrão, se necesssario..."
if ! pulumi config get backend_port > /dev/null 2>&1; then
  pulumi config set backend_port 8000
  echo "Configurado backend_port = 8000"
fi

if ! pulumi config get frontend_port > /dev/null 2>&1; then
  pulumi config set frontend_port 8042
  echo "Configurado frontend_port = 8042"
fi

echo "Executando 'pulumi up' para aplicar infraestrutura..."
pulumi up --yes

echo "Deploy realizado com sucesso!"
