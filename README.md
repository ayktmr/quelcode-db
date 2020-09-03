# データベース

#### 教材：[スッキリわかるSQL入門](https://book.impress.co.jp/books/1118101071)


## 課題①
課題要件に従った概念設計・倫理設計を行い、ER図を作成  
ブランチ：[feature/db-challenge1](https://github.com/ayktmr/quelcode-db/tree/feature/db-challenge1)

## 課題②
課題①で作成したER図を基に、物理設計とDDL文を作成  
ブランチ：[feature/db-challenge2](https://github.com/ayktmr/quelcode-db/tree/feature/db-challenge2)

## 課題③
課題内容に沿うSQL文の作成  
ブランチ：[feature/db-challenge3](https://github.com/ayktmr/quelcode-db/tree/feature/db-challenge3)

---


---

# QUELCODE データベース課題

## ディレクトリ解説

```
quelcode-php
├── db ....................... 作成した課題の提出場所
├── mysql5.7
│   ├── mysql .................. 起動すると作られる。データ永続化用
│   ├── mysqlvolume ............ mysqlコンテナにマウントされる。ホストとのファイル受け渡し用
│   └── my.cnf ................. mysqlコンテナの設定ファイル
│  
├── .gitignore
├── docker-compose.yml
└── README.md
```

## データベース情報
MySQLバージョン 5.7.x

## phpMyAdmin接続方法

Dockerを立ち上げた後以下のアドレスにアクセスする

http://localhost:10081
