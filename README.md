
# トピつく。

自分で作成したフォルダ内の内容をランダムで表示してくれるアプリです。
呑み会や合コンなどはもちろん、友人との親睦を深めるなどの用途で使えます。

# 本番環境
 
AWS[EC2]にデプロイしています。  
ログインページより、テストユーザー(トピつく太郎)で簡単ログインできます。
トピつく太郎のパスワード : topituku
http://www.topituku.xyz/

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
 - EC2
