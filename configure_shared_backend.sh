#!/bin/bash

# check terraform software exit or not
# to run this script we need terraform, awscli and git on the machine.

terraform_state = `terraform version |grep "terraform" |wc -l`
git_status=`git version  |grep "git version" |wc -l`
if [[ $terraform_state == 1 ]] && [[ $git_status == 1]]; then
   git clone https://github.com/shaikis/terraform-aws-shared-state.git
   check_clone_statu=`ls -ltr ./terraform-aws-shared-state/ |wc -l`
   if [[ $check_clone_statu == 9 ]]; then
      cd terraform-aws-shared-state
      terraform init
      terraform apply -auto-approve
   else
     exit
   fi
   terraform init
   terraform apply -auto-approve

else
  echo "Install terraform before running this script"
fi