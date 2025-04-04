#!/bin/bash
docker build -t alumniStudent .
echo Hyyy
docker login -u kishores572004 -p 05-Jul-04
docker tag alumniStudent kishores572004/alumni_student
docker push kishores572004/alumni_student
kubectl apply -f  deploy.yaml --validate=false
kubectl apply -f svc.yaml --validate=false
