# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.find_or_create_by(id: 1) do |user|
  user.email = 'admin@example.com'
  user.password = 'password'
end

sample_md = <<-eos
# H1タイトル

## H2タイトル

1. リスト１リスト１リスト１
2. リスト２リスト２リスト２

### H3タイトル

* リスト１リスト１リスト１
* リスト２リスト２リスト２

### H4タイトル

```ruby:hoge.rb
p hogehoge
def hoge
  p "hgoehoge"
end
```

```html:hoge.html
<h1>title</h1>
<p>hoge</p>
```

```bash
$ ls
$ cat hoge.rb
$ echo "aaaaaaa"
```
eos

cate1 = Category.create(name: 'テストカテゴリー１', user_id: user.id)
cate2 = Category.create(name: 'テストカテゴリー２', user_id: user.id)

Memo.create(
        title: "markdown 入力確認",
        status: 0,
        content_body: sample_md,
        user_id: user.id,
        category_ids: [cate1.id, cate2.id]
)

10.times do |i|
  Memo.create(
      title: "test#{i}",
      status: 0,
      content_body: "テスト"*10,
      user_id: user.id,
      category_ids: [cate1.id]
  )
end

