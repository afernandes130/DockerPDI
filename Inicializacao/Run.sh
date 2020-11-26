#!/bin/bash

cp -R /tmp/git/Repositorio/* $PDI_REPOSITORY
cp -R /tmp/git/Configuracao/.kettle/* $KETTLE_HOME

echo ./pan.sh 
echo ./pan.sh dentro do arquivo