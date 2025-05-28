tkatono_RaiseTech
--
# CircleCI, CloudFormation, Ansible, ServerSpec を用いて、Rails アプリケーションの環境構築およびデプロイの自動化

1. 成果物  
　このリポジトリは表題のハンズオンを目的とした一連の過程を表しています。したがってそれぞれのフォルダは独立して存在しているわけではなく、最終的にはLecture13が最終的な成果物となります。  
 
2. CircleCI で実装したパイプライン  
    - cfn-lint による AWS CloudFormation の構文チェック
    - AWS CloudFormation を実行して AWS 環境を構築
    - Ansible を利用して サンプルRails アプリケーションの環境を自動構築
    - Serverspec を使って構築した環境への自動テストを実施
  
    ※EC2 のキーペアについては、事前に手動作成したものを CircleCI の環境変数に組み込んで使用します。
