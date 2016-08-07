# README

### Overview

`qiita-markdown`を利用したメモアプリです。

### Ruby version

* Ruby 2.3.1
* Ruby on Rails 5.0.0

### Install

```
git clone https://github.com/yoshiokaCB/rmemo.git
cd rmemo
bundle install
```

必要に応じて`config/database.yml`を修正してください。


```
# DB作成
rake db:create
# マイグレーション
rake db:migrate
# sample
rake db:seed
```

### サーバ起動

```
rails s
```
`localhost:3000`でアクセスできます。

```
id: admin@example.com
pass: password
```

### How to run the test suite (wip)

```
bundle exec rspec
```


