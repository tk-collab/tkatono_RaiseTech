# 第四回課題

1. 前提条件
- EC2とRDSはそれぞれ別々のVPCに所属　→　そのため別途ピアリングを作成。
- セキュリティグループのインバウンドルールとアウトバウンドルールのdestinationは0.0.0.0/0　→　そのためルートテーブルにigwへのルートを追加

2. VPC
![VPC](screenshots/Screenshot 2025-02-27 224521.png)

3. EC2
![EC2](screenshots/Screenshot 2025-02-27 224615.png)

4. RDS
![RDS](screenshots/Screenshot 2025-02-27 224729.png)

5. RouteTable1
![RouteTable1](screenshots/Screenshot 2025-02-27 224833.png)

6. RouteTable2
![RouteTable2](screenshots/Screenshot 2025-02-27 224933.png)

7. Peering
![Peering](screenshots/Screenshot 2025-02-28 193646.png)

8. 結果
![結果](screenshots/Screenshot 2025-02-27 223152.png)
