#!/bin/bash 
 
# IDEA para resolver el inconvenientes con los nombres del configMap crea un nameSpace par cada deployment

read -p 'Give a name to the blog: ' BLOGNAME
 
read -p 'which is the db name: ' DBNAME
 
read -p 'which is the DBUSER: ' DBUSER
 
read -p 'which plugins do you want? (separated by commas): ' WPPLUGINS

read -p 'specify a username pls: ' USERNAME

read -p 'Nombre unico para tu apply: ' NAMESPACE

kubectl create ns $NAMESPACE

kubectl config set-context --current --namespace=$NAMESPACE

kubectl create secret generic db-secret --from-literal=rootdb='123456' --from-literal=bitnamidb='123456'

kubectl create secret generic wppass --from-literal=wpsecret='123456' 

kubectl create configmap wpblogname --from-literal=name=$BLOGNAME

kubectl create configmap wpdbname --from-literal=name=$DBNAME

kubectl create configmap wpdbuser --from-literal=name=$DBUSER

kubectl create configmap wpplugins --from-literal=name=$WPPLUGINS

kubectl create configmap wpusername --from-literal=name=$USERNAME

kubectl apply -f .