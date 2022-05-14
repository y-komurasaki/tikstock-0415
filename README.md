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