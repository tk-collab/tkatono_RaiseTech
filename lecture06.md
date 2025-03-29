# 第六回課題
1. CloudTrailにてイベントをピックアップ<br>
イベント名：DescribeAlarms<br>
含まれている内容：<br>
・イベント時間："eventTime": "2025-03-24T19:05:22Z"<br>
・イベントソース："eventSource": "monitoring.amazonaws.com"<br> 
・AWSリージョン："awsRegion": "ap-northeast-1"<br>
![](./screenshots/6th/Screenshot-2025-03-29-172336.png)<br> 

2. ALBのCloudWatch Alarm<br>
![](./screenshots/6th/Screenshot-2025-03-25-033216.png)<br> 
![](./screenshots/6th/Screenshot-2025-03-25-033320.png)<br>
![](./screenshots/6th/Screenshot-2025-03-25-033341.png)<br>

3. 第5回で構築した環境の利用料を見積る(AWS pricing calculator)<br>
https://calculator.aws/#/estimate?id=2f22eef7c5e6121d9c5471f0191901ae2c09d6fb
![](./screenshots/6th/Screenshot-2025-03-25-203500.png)<br>
![](./screenshots/6th/Screenshot-2025-03-25-203551.png)<br>
考察：<br>
今月課金額が発生してしまった主な理由はEIPによるものでした。こちら調査の結果使用状況がidleでもin useでも無料枠に含まれず課金されてしまうようでしたので、使用が終わったらreleaseする運用のやり方に変更しました。EC2のsnapshotの予測値が100%を超えておりますが、一時的に作成してしまい、すぐに削除しましたので、実際の請求書は下記の通りほぼ無料枠におさまっております。
![](./screenshots/6th/Screenshot-2025-03-27-172615.png)<br>
