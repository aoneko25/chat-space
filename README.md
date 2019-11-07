# chat-space DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|index: true|
|password|string|null: false|index: true|
|username|string|null: false|index: true|
### Association
- has_many :groupe_users
- has_many :comments
- has_many :groups through: :groups_users

## groupテーブル
|Column|Type|Options|
|------|----|-------|
|gruop|string|null: false|
### Association
- has_many :users through: :groups_users
- has_many :group_users
- has_many :comments

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: true|
|user_id|integer|null: false, foreign_key: true|
|group|string|null: false, foreign_key: true|
|photo|photo|null: true|
### Association
- belongs_to :users
- belongs_to :group


