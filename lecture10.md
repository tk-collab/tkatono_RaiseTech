# 第１０回課題
* ※CFn→CloudFormation

## CFnに使用したymlファイル
* [template.yaml](template.yaml)

## CFnで作成したリソース
* VPC
![vpc](screenshots/10th/Screenshot-2025-04-05-010624.png)
* EC2
![ec2](screenshots/10th/Screenshot-2025-04-05-011159.png)
  - EC2のインバウンド
  ![EC2のインバウンド](screenshots/10th/Screenshot-2025-04-05-011302.png)
  - S3に自動アップロードした静的ウェブサイトにアクセスできるか動作確認
  ![ S3に自動アップロードした静的ウェブサイトにアクセスできるか動作確認](screenshots/10th/Screenshot-2025-04-05-013755.png)
* RDS
![rds](screenshots/10th/Screenshot-2025-04-05-014353.png)
* ELB
![elb](screenshots/10th/Screenshot-2025-04-05-014617.png)
* S3
![s3](screenshots/10th/Screenshot-2025-04-05-015714.png)

## CFnで作成したリソースに接続できるか確認
* CFnで作成したリソース間の接続(EC2→RDS)
![CFnで作成したec2からrdsに接続成功](Screenshot-2025-04-05-015521.png)

## 感想
* S3へのファイルアップロードの実装が難しかった。UserDataとAWS::CloudFormation::Initを用いて何とかできました。今回はS3をパブリックアクセスを最初から有効にしたので、次回機会があればパブリックアクセスを無効にした状態でも同じアクセスできるかどうかも試してみたい。
