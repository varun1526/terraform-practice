#!/bin/bash

terraform init

terraform plan --var-file=./variables/${TF_VAR_ENVIRONMENT}/variables.tfvars