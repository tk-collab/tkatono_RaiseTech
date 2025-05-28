tkatono_RaiseTech
--
# Automate Rails application environment construction and deployment using CircleCI, CloudFormation, Ansible, and ServerSpec.

1. Deliverables  
　This repository displayed consecutive process for subject's hands on, hence those folders are not existed independently, but Lecture13 is　eventually the final delivalables.  

2. Pipeline implemented with CircleCI  
    - Syntax check of AWS CloudFormation using cfn-lint
    - Executing AWS CloudFormation to build the AWS environment
    - Automatically build the environment for the sample Rails application using Ansible
    - Performing automatic testing on the built environment using Serverspec

  ※The EC2 key pair is created manually in advance and used by incorporating it into the CircleCI environment variables.
