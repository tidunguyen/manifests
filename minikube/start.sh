#! /usr/bin/env bash


minikube start \
--cpus 6 \
--memory 12288 \
--disk-size=60GB \
--kubernetes-version='1.21.4' \
--addons=[dashboard,metrics-server] \
-p kf-manifests-1
