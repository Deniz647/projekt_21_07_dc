#!/bin/bash

docker build -t todo-frontend:latest ./frontend
docker build -t todo-backend:latest ./backend

kubectl apply -f frontend-deployment.yml
kubectl apply -f frontend-service.yml
kubectl apply -f backend-deployment.yml
kubectl apply -f backend-service.yml
