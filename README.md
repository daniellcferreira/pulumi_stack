# Pulumi em Python - Projeto Escola

[![Python](https://img.shields.io/badge/Python-Scripting-blue?style=flat-square&logo=python)](https://www.python.org/)
[![Pulumi](https://img.shields.io/badge/Pulumi-Infrastructure%20as%20Code-brightgreen?style=flat-square&logo=pulumi)](https://www.pulumi.com/)
[![Pytest](https://img.shields.io/badge/Pytest-Test%20Automation-orange?style=flat-square&logo=pytest)](https://docs.pytest.org/)
[![Dotenv](https://img.shields.io/badge/Dotenv-Env%20Configuration-yellowgreen?style=flat-square&logo=python)](https://pypi.org/project/python-dotenv/)


---

## Descrição

Projeto didático utilizando Pulumi com Python para simular a criação e gerenciamento de recursos locais, sem a necessidade de infraestrutura na nuvem. A aplicação demonstra conceitos básicos de infraestrutura como código (IaC) usando Pulumi, com foco em execução local, configuração segura de variáveis e testes automatizados. 

O projeto é ideal para quem está iniciando com Pulumi e quer entender a estrutura básica, uso de stacks, configurações via `.env` e integração com testes em Python.

---

## Funcionalidades

- Criação de stacks Pulumi com recursos simulados (backend e frontend).
- Configuração parametrizada de portas via arquivo `.env` ou Pulumi Config.
- Uso de passphrase para proteção de secrets e configuração local (backend local).
- Scripts automatizados para criar ambiente virtual, instalar dependências, aplicar updates, visualizar recursos, rodar testes, destruir recursos e remover stacks.
- Testes automatizados com Pytest para validação das configurações.
- Suporte para execução local sem necessidade de login em serviços cloud Pulumi.

---

## Tecnologias Abordadas

- **Python 3.11**: Linguagem de programação utilizada para escrever a lógica de infraestrutura e testes.
- **Pulumi**: Ferramenta de infraestrutura como código (IaC) para definir, implantar e gerenciar recursos computacionais.
- **Pytest**: Framework para testes automatizados em Python, garantindo que configurações e valores estejam corretos.
- **python-dotenv**: Biblioteca para carregar variáveis de ambiente a partir do arquivo `.env`, facilitando a configuração local segura.
- **Bash scripting**: Scripts shell para automatizar processos comuns do projeto, como setup, deploy, teste e limpeza.

---

Este projeto foi desenvolvido com foco em aprendizado e experimentação local. Não provisiona recursos reais em provedores de nuvem, mas prepara a base para escalabilidade futura com Pulumi em ambientes reais.

