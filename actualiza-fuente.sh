#!/bin/sh

# Actualiza el directorio original en inglés
echo
echo Actualiza repositorio Content en inglés
echo -------------------------------------------
echo
cd ../content

git restore yarn.lock

git pull origin main

yarn install

# Actualiza el directorio en español
echo
echo Actualiza el repositorio translated-content
echo ----------------------------------------------
echo

cd ../translated-content
git stash
git pull origin main
git stash pop
git stash clear
echo
echo ¡Listo! 
echo ----------------------------------------------
