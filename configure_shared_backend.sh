#!/bin/bash

# check terraform software exit or not
# to run this script we need terraform, awscli and git on the machine.

terraform_state=`terraform version |grep "terraform" |wc -l`
git_status=`git version  |grep "git version" |wc -l`
preset_dir=`pwd`
if [[ $terraform_state == 1 ]] && [[ $git_status == 1 ]]; then
   cd $HOME
   git clone https://github.com/shaikis/terraform-aws-shared-state.git
   check_clone_status=`ls -ltr $HOME/terraform-aws-shared-state/ |wc -l`
   if [[ $check_clone_status > 5 ]]; then
      cd $HOME/terraform-aws-shared-state
      terraform init
      terraform apply -auto-approve
   else
     exit
   fi
   cd $preset_dir
   terraform init
   terraform apply -auto-approve

else
  echo "Install terraform before running this script"
fi