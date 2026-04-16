#!/bin/sh

# 1. Instalação das ferramentas
apk update
apk add git github-cli neovim

# 2. Criação do usuário e grupo
addgroup Devs
adduser -D -G Devs Victor

# 3. Configuração do Git (direto no arquivo do usuário)
# Em vez de 'su', vamos escrever direto onde o git procura:
git config --global user.name "VictorAlexEtec2403427"
git config --global user.email "Victor.Gouveia@aluno.cps.sp.gov.br"

# 4. Preparação das pastas
mkdir -p /home/projects
chown -R Victor:Devs /home/projects

# 5. Clonar o projeto
cd /home/projects
git clone https://github.com/VictorAlexEtec2403427/PHP_Projects

echo "Tudo pronto! Agora é só codar."