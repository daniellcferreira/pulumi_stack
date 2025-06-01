#!/bin/bash

set -e

# cria virtualenv se não existir
if [ ! -d venv ]; then
  echo "Criando ambiente virtual venv..."
  python3 -m venv venv
else
  echo "Ambiente virtual venv ja existe."
fi

# ativa virtualenv
echo "Ativando ambiente virtual venv..."
source venv/Scripts/activate

# atualiza/instala dependências
echo "Instalando/atualizando dependências..."
pip install --upgrade pip
pip install -r requirements.txt

echo "Ambiente virtual venv criado com sucesso!"
echo "Para ativar manualmente, execute: source venv/Scripts/activate"