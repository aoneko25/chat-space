# chat-space DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|null: false|index: true|
|password|null: false|index: true|
|username|null: false|index: true|
### Association
- has_many :groupe_users
- has_many :comments
- has_many: groups through: :groups_users

## groupテーブル
|Column|Type|Options|
|------|----|-------|
|use|references|null: false
### Association
- has_many :users
- has_many :group_users
- has_many :comments

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :users

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|
|photo|integer|null: false, foreign_key: true|
### Association
- belongs_to :users
- belongs_to :group


