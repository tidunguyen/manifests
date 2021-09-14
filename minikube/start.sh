#! /usr/bin/env bash


minikube start \
--cpus 12 \
--memory 12288 \
--disk-size=120g \
-p kf-manifests-1
