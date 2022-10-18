#!/bin/sh

# Actualiza el directorio original en inglés
echo
echo Actualiza repositorio Content en inglés
cd ../content
git pull origin main

# Actualiza el directorio en español
echo
echo Actualiza el repositorio translated-content
cd ../translated-content
git stash
git pull origin main
git stash pop
git stash clear

