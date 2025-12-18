#!/bin/bash

terraform init

terraform apply --var-file=./variables/${TF_VAR_ENVIRONMENT}/variables.tfvars