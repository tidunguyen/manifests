#!/usr/bin/env bash

minikube addons enable dashboard -p kf-manifests-1
minikube addons enable metrics-server -p kf-manifests-1
minikube dashboard -p kf-manifests-1