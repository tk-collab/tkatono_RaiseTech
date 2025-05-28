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

3. RaiseTech（オンラインエンジニアスクール）の講義内容と課題

| 講義<br> （全&nbsp;16&nbsp;回） |     学習テーマ     | 講義内容                                                                                                                     |                  課題                  |
| :-----------------------------: | :----------------: | ---------------------------------------------------------------------------------------------------------------------------- | :------------------------------------: |
|             第 1 回             |  WEB アプリを知る  | ・ インフラエンジニアについて<br>・ AWS アカウントを作成<br>・ IAM & MFA 設定                                                |                   -                    |
|             第 2 回             |                    | ・ Git について<br>・ GitHub アカウントを作成<br>・ Pull Request の実施                                                      | [lecture02.md](lecture02.md) |
|             第 3 回             |                    | ・ Rails による Web アプリケーションのデプロイ <br>・ AP サーバーと DB サーバーについて                                      | [lecture03.md](lecture03.md) |
|             第 4 回             | AWS 環境の手動構築 | ・ VPC、EC2、RDS の作成<br>・ EC2 と RDS の接続                                                                              | [lecture04.md](lecture04.md) |
|             第 5 回             |                    | ・ EC2 に手動でアプリケーションをデプロイ<br>・ データの保存先を S3 に変更<br>・ ALB による冗長化<br>・ インフラ構成図の作成 | [lecture05.md](lecture05.md) |
|             第 6 回             |                    | ・履歴を残すことの重要性<br>・ CloudTrail イベントの確認<br>・ CloudWatch アラームの設定<br>・ AWS 料金見積の作成            | [lecture06.md](lecture06.md) |
|             第 7 回             |                    | ・ AWS におけるセキュリティの対応策<br>・脆弱性、認証情報の流出、人為的な過負荷                                              |     -    |
|           第 8, 9 回            |                    | ・ ライブコーディング                                                                                                        |                   -                    |
|            第 10 回             |    IaC / 自動化    | ・ CloudFormation による インフラのコード化                                                                                  | [lecture10.md](lecture10.md) |
|            第 11 回             |                    | ・ Serverspec の実装                                                                                                         | [lecture11.md](lecture11.md) |
|            第 12 回             |                    | ・ CircleCI でサンプルの コンフィグを実行<br>・Terraform の解説                                                              | [lecture12.md](lecture12.md) |
|            第 13 回             |                    | ・ Ansible を導入<br>・ CircleCI に CloudFormation, Ansible, Serverspec のパイプラインを作成して自動化                       | [lecture13.md](lecture13.md) |
|          第 14, 15 回           |                    | ・ ライブコーディング                                                                                                        |                   -                    |
|            第 16 回             |                    | ・ エンジニアとしての心構え<br>・現場での立ち振る舞い                                                                        |                   -                    |
