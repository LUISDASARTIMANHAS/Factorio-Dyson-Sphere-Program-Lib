@echo off
title=autogit 
:: Leitura da versão a partir do arquivo info.json
for /f "tokens=2 delims=:," %%a in ('type info.json ^| findstr /C:"\"version\""') do (
    set "MOD_VERSION=%%~a"
)

:: Remove espaços em branco ao redor da versão
set "MOD_VERSION=%MOD_VERSION: =%"
set "MOD_VERSION=%MOD_VERSION:~1,-1%"

:: Verifica se a versão foi obtida corretamente
if "%MOD_VERSION%"=="" (
    echo Erro: Falha ao obter a versão do arquivo info.json.
    exit /b 1
)


:: Leitura do nome a partir do arquivo info.json
for /f "tokens=2 delims=:," %%a in ('type info.json ^| findstr /C:"\"name\""') do (
    set "MOD_NAME=%%~a"
)

:: Remove espaços em branco ao redor do nome
set "MOD_NAME=%MOD_NAME: =%"
set "MOD_NAME=%MOD_NAME:~1,-1%"

:: Verifica se o nome foi obtido corretamente
if "%MOD_NAME%"=="" (
    echo Erro: Falha ao obter o nome do arquivo info.json.
    exit /b 1
)

:: Inicializa o repositório Git (se necessário)
if not exist ".git" (
    git init
    git remote add origin https://github.com/LUISDASARTIMANHAS/Factorio-Quantum-Teleporter.git
)

:: Verifica o status dos arquivos
git status

:: Adiciona todos os arquivos alterados, respeitando o .gitignore
git add .

:: Cria um commit com uma mensagem baseada no nome e versão do mod
git commit -m "Automated commit for %MOD_NAME% version %MOD_VERSION%"

:: Envia os arquivos para o repositório remoto na branch especificada
git push origin main
exit 