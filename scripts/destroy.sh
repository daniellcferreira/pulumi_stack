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

echo "Selecionando stack 'dev'..."
pulumi stack select dev

echo "Executando 'pulumi destroy'..."
pulumi destroy --yes

echo "Infraestrutura destruida com sucesso!"