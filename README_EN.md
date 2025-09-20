tkatono_RaiseTech
--
# Automate Rails application environment construction and deployment using CircleCI, CloudFormation, Ansible, and ServerSpec.

1. Deliverables
To confirm entire flow for IaC, constitute a sample app available publicly, which is not created myself, on AWS environment and then a series of CI/CD.
This repository displayed consecutive process for subject's hands on, hence those folders are not existed independently, but Lecture13 is eventually the final delivalables.  

2. Pipeline implemented with CircleCI  
    - Syntax check of AWS CloudFormation using cfn-lint
    - Executing AWS CloudFormation to build the AWS environment
    - Automatically build the environment for the sample Rails application using Ansible
    - Performing automatic testing on the built environment using Serverspec

    ※The EC2 key pair is created manually in advance and used by incorporating it into the CircleCI environment variables.

3. Lecture contents and assignments at RaiseTech (online engineering school)

| Lectures (16 total) | Study themes | Lecture contents | Assignments |
| :-----------------------------: | :----------------: | ------------------------------------------------------------------------------------------------------------- | :------------------------------------: |
| 1st lesson | Getting to know web applications | ・ About infrastructure engineers<br>・ Creating an AWS account<br>・ IAM & MFA settings | - |
| 2nd lesson | | ・ About Git<br>・ Creating a GitHub account<br>・ Making a pull request | [lecture02.md](lecture02.md) |
| 3rd lesson | | ・ Deploying web applications with Rails <br>・ About AP and DB servers | [lecture03.md](lecture03.md) |
| 4th lesson | Manual construction of AWS environment | ・ VPC, EC2, RDS <br>・ Connecting EC2 and RDS | [lecture04.md](lecture04.md) |
| 5th | | ・ Deploying applications manually to EC2<br>・ Changing data storage destination to S3<br>・ Redundancy with ALB<br>・ Creating an infrastructure diagram | [lecture05.md](lecture05.md) |
| 6th | | ・ Importance of keeping a history<br>・ Checking CloudTrail events<br>・ Setting CloudWatch alarms<br>・ Creating an AWS fee estimate | [lecture06.md](lecture06.md) |
| 7th | | ・ Security measures in AWS<br>・ Vulnerabilities, leaking of credentials, artificial overload | - |
| 8th and 9th | | ・ Live coding | - |
| 10th | IaC / Automation | ・ Codifying infrastructure with CloudFormation | [lecture10.md](lecture10.md) |
| 11th | | ・ Implementing Serverspec | [lecture11.md](lecture11.md) |
| 12th | | ・ Running sample configurations with CircleCI<br>・ Explanation of Terraform | [lecture12.md](lecture12.md) |
| 13th | | ・ Introducing Ansible<br>・ Creating a pipeline of CloudFormation, Ansible, and Serverspec in CircleCI for automation | [lecture13.md](lecture13.md) |
| 14th and 15th | | ・ Live coding | - |
| 16th | | ・ Attitude as an engineer<br>・ How to behave in the field | - |
