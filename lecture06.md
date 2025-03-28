# 第六回課題
1. 直近のCloudTrailのEvent History
対象操作：Alarm取得
考察：
・CloudWatchで設定したポーリングの間隔ごとに閾値を超えている間、DescribeAlarmsが呼び出される
・ELBのヘルスチェックの間隔毎にDescribeTargetHealthが呼び出される
・AWSコンソール上でアラームの設定画面を開いたとき等にDescribeMetricFiltersが呼び出される

2. ALBのCloudWatch Alarm 
![](./screenshots/6th/Screenshot-2025-03-25-033216.png)<br>
![](./screenshots/6th/Screenshot-2025-03-25-033320.png)<br>
![](./screenshots/6th/Screenshot-2025-03-25-033341.png)<br>

3. 第5回で構築した環境の利用料を見積る(AWS pricing calculator) 
https://calculator.aws/#/estimate?id=54ac952e0ef0ad484dbbc70f99173ba8af6c88eb
![](./screenshots/6th/Screenshot-2025-03-25-203500.png)<br>
![](./screenshots/6th/Screenshot-2025-03-25-203551.png)<br>
考察：
今月課金額が発生してしまった主な理由はELBのパブリックIPによるものでした。こちら調査の結果使用状況がidleでもin useでも無料枠に含まれず課金されてしまうようでしたので、使用が終わったらreleasaeする運用のやり方に変更しました。 
EC2のsnapshotの予測値が100%を超えておりますが、一時的に作成してしまい、すぐに削除しましたので、実際の請求書は下記の通りほぼ無料枠におさまっております。
![](./screenshots/6th/Screenshot-2025-03-27-172615.png)<br>
