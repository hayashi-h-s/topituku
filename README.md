
# トピつく。

自分で作成したフォルダ内の内容をランダムで表示してくれるアプリです。  
呑み会や合コンなどはもちろん、友人との親睦を深めるなどの用途で使えます。  
転職活動用のポートフォリオとして作成しましたが、後々はサービスとしてリリースすることを目標としています。  
転職後も、学習を兼ねて機能の追加、UI,UXの向上、セキュリティの強化などを行っていきます。  

# 本番環境
 
AWS[EC2]にデプロイしています。  
ログインページより、テストユーザー(トピつく太郎)で簡単ログインできます。  
トピつく太郎のパスワード : topituku  
http://www.topituku.xyz/users/sign_in

# 実装機能一覧、使用gemなど
 
* folder投稿機能(CRUD)
* folderに従属するpost投稿機能(CRUD)
* folderに従属するpostsをランダムで表示
* ユーザー機能(device)
* ユーザーアイコン画像投稿、編集機能(carrierwave,Amazon S3)
* いいね機能
* ページネーション機能(kaminari)
* 環境変数のセキュリティ管理(dotenv-rails)
* レスポンシブデザイン（スマホサイズに対応）

# 使用技術
 
* Ruby  2.6.5
* Rubu on Rails 6.0.1
* RSpec
* MySQL 8.0
* Sass
* Bootstrap
* jQuery 
* GitHub,Git
* AWS
  - VPC
  - EC2
  - RDS for MySQL
  - Route53
  - S3
  
# AWS構成図
　
 ![aws_topituku](https://user-images.githubusercontent.com/49052894/81463386-42fac580-91f4-11ea-92d8-6b87612a1f1b.png)
