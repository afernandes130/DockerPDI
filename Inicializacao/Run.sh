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

echo ./pan.sh 
echo ./pan.sh dentro do arquivo $PDI_HOME

#TODO Execução da tranformação ou JOB passado por pametro
#$PDI_HOME/data-integration/pan.sh -rep=BiCloud -trans /TesteDocker

case $1 in "ktr") echo "krt" ;;
"job" ) echo "job" ;;
*) echo "opcao invalida" ;;
esac