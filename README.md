tkatono_RaiseTech
--
# CircleCI, CloudFormation, Ansible, ServerSpec を用いて、Rails アプリケーションの環境構築およびデプロイの自動化
## Automate Rails application environment construction and deployment using CircleCI, CloudFormation, Ansible, and ServerSpec.

1. 成果物 Deliverables\
　このリポジトリは表題のハンズオンを目的とした一連の過程を表しています。したがってそれぞれのフォルダは独立して存在しているわけではなく、最終的にはLecture13が最終的な成果物となります。\
　This repository displayed consecutive process for subject's hands on, hence those folders are not existed independently, but Lecture13 is　eventually the final delivalables. \
 
2. CircleCI で実装したパイプライン Pipeline implemented with CircleCI\
  - cfn-lint による AWS CloudFormation の構文チェック
  - AWS CloudFormation を実行して AWS 環境を構築
  - Ansible を利用して サンプルRails アプリケーションの環境を自動構築
  - Serverspec を使って構築した環境への自動テストを実施

  ※EC2 のキーペアについては、事前に手動作成したものを CircleCI の環境変数に組み込んで使用します。

  - Syntax check of AWS CloudFormation using cfn-lint
  - Executing AWS CloudFormation to build the AWS environment
  - Automatically build the environment for the sample Rails application using Ansible
  - Performing automatic testing on the built environment using Serverspec

  ※The EC2 key pair is created manually in advance and used by incorporating it into the CircleCI environment variables.
