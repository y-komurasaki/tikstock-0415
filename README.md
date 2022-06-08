# アプリケーション名
Tik Stock
# アプリケーション概要
登録商品の在庫管理,チームでスマホPC何処からでも在庫管理ができる。
# URL※

# テスト用アカウント
Basic認証のIDとパスワード |  export BASIC_AUTH_USER=''
export _AUTH_PASSWORD='2222'

投稿者用のメールアドレスとパスワード   | メールアドレス：
　　　　　　　　　　　　　　　　　　　　  パスワード：

その他利用者用のメールアドレスとパスワード | メールアドレス：
　　　　　　　　　　　　　　　　　　　　     パスワード：
# 利用方法
## 商品登録
1.ログインユーザーはトップ画面から新規商品を登録を行う

2.新規登録画面より（商品名、商品情報、在庫数）を入力し登録ボタンを押す

3.一覧画面に登録商品一覧が表示される

## 在庫管理
1.在庫数変更確認したい商品を一覧から検索し在庫管理を行う

2.ログインユーザーは指定した商品の在庫数を変更する

# アプリケーションを作成した背景
日々の業務で消耗品を管理する業務があり、現状は紙の台帳で管理しており事務所にいなければ在庫数の確認や外からでは毎回事務所に電話で確認することが多いのでコミニュケーションコストがかかるなど問題点があった。
スマホからもタイムリーに在庫数をチームで管理でき、ペーパーレスで最新の情報を共有できるアプリがあれば便利だと思い在庫管理アプリを作成した。

# 実装した機能についての画像やGIFおよびその説明※


# DB 設計

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| name               | string              | null: false               |
| email              | string              | null: false, unique: true |
| encrypted_password | string              | null: false, unique: true |


### Association

* has_many :stocks


## stocks table

| Column                  | Type       | Options                        |
|-------------------------|------------|--------------------------------|
| item_name               | string     | null: false                    |
| info                    | text       | null: false                    |
| stock_quantity          | integer    | null: false                    |
| user                    | references | null: false, foreign_key: true |

### Association

- belongs_to :user

# 画面遷移図

# 開発環境
HTML・CSS・Ruby・Ruby on Rails・JavaScript・GitHub・Bootstrap

# ローカルでの動作方法※

# 工夫したポイント
スマホからでも対応できるようBootstrapを用いてレスポンシブ対応にし見た目はシンプルで誰でも使いやすいよう意識した。

