# トピつく。
 
ランダムで話題を提供してくれるアプリです。
呑み会や合コンなどで使えます。

 
# 本番環境
 
Herokuでデプロイしています。ログイン画面からテストユーザーでログインできます。
https://topituku.herokuapp.com/
 
# 実装機能一覧、使用gemなど
 
* フォルダ投稿機能(CRUD)
* 投稿したフォルダをの内容をランダムで表示する機能
* 画像投稿機能(carrierwave,Amazon S3)
* ページネーション機能(kaminari)
* ユーザー機能(device)
* 環境変数のセキュリティ管理(dotenv-rails)


# 使用技術
 
* Ruby  2.6.5
* Rubu on Rails 6.0.1
* RSpec
* MySQL 8.0
* Sass
* Bootstrap
* jQuery 
* GitHub,Git
