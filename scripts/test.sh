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

echo "Rodando teste com pytest..."
pytest test/

echo "Testes concluidos com sucesso!"