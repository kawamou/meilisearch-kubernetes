# meilisearch-kubernetes

- MeilisearchをGKE上にデプロイするためのサンプルです
- 詳細はQiita記事に記載しています
    - ref. Qiita記事作ったらリンク貼る

```sh
❯ tree
.
├── README.md
├── main.tf
├── meilisearch-kubernetes
│   └── values.yaml # meilisearch/meilisearch-kubernetesの設定ファイル
├── provider.tf
└── variables.tf
```

# GKEを作成

- `terraform apply`の実行でGKEがデプロイされます

# Meilisearchをデプロイ

- 公式リポジトリをクローンします。
    - https://github.com/meilisearch/meilisearch-kubernetes
- 本リポジトリの`./meilisearch-kubernetes/values.yaml`で公式リポジトリの`./charts/meilisearch/values.yaml`を置き換えてHelmを実行します
    - `helm upgrade -i meilisearch meilisearch/meilisearch -f values.yaml`



