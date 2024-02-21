#!/bin/zsh

for d in ./Playground/*/ ; do (cd "$d" && echo "*********" && echo $d && echo "*********" && terraform init && terraform destroy -auto-approve); done
