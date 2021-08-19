
# トピつく。

呑み会などで使える話題提供アプリです。
作成したフォルダに話題を投稿し、内容をランダムで表示してくれるアプリです。  
転職活動用のポートフォリオとして作成しました。  

# このアプリを作ろうと思った経緯

以前友人と既存の話題提供アプリで遊んだことがありましたが、  
自分で内容を作成できれば、もっと面白いと思い作ろうと考え作成しました。
実際に遊んでみて、「とても楽しかった」と言ってもらえたのが、  
本当に嬉しかったです。
まだ実装できていませんがゲーム参加者が匿名で話題を投稿し、  
ランダムで表示することで、誰のどのような話題が表示されるかわからないように  
したいと考えております。  

# 本番環境
 
AWS[EC2]にデプロイしています。  
ログインページより、テストユーザー(トピつく太郎)で簡単ログインできます。  （現在はAWSの期限切れでアクセス不可）
トピつく太郎のパスワード : topituku  
http://www.topituku.xyz/users/sign_in

# 実装機能一覧、使用gemなど
 
* folder投稿機能(CRUD)
* folderに従属するpost投稿機能(CRUD)
* folderに従属するpostsをランダムで表示
* ユーザー機能(device)
* ユーザーアイコン画像投稿、編集機能(carrierwave,Amazon S3)
* いいね機能(Ajax)
* フォロー機能(Ajax)
* ページネーション機能(kaminari)
* 環境変数のセキュリティ管理(dotenv-rails)
* レスポンシブデザイン（スマホサイズに対応）
* Rubyのコーディング規約に準拠してるかをチェック(Rubocop)  

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
