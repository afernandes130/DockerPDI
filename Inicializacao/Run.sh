#!/bin/bash

#Configuracao para uso do repositorio na AWS
# aws configure set aws_access_key_id $AWS_ACCESS_KEY
# aws configure set aws_secret_access_key $AWS_SECRET_KEY
# aws configure set default.region $REGION
# aws s3 sync s3://projeto-pentaho-bi/DockerPDI/Repositorio $PDI_REPOSITORY
# aws s3 sync s3://projeto-pentaho-bi/DockerPDI/Configuracao $KETTLE_HOME

#Configuração para uso do repositorio no git
cp -R /tmp/git/Repositorio/* $PDI_REPOSITORY
cp -R /tmp/git/Configuracao/.kettle/* $KETTLE_HOME

echo "Inicando a execução do PDI"

#TODO Execução da tranformação ou JOB passado por pametro
#$PDI_HOME/data-integration/pan.sh -rep=BiCloud -trans /TesteDocker 


case $1 in "ktr") 
    echo "krt" 
    echo $2
    echo $3
    $PDI_HOME/data-integration/pan.sh -rep=$2 -trans=$3
    ;;
"job" ) 
    echo "job" 
    echo $2
    echo $3
    $PDI_HOME/data-integration/kitchen.sh -rep=$2 -job=$3 
    ;;
*) echo "opcao invalida" ;;
esac