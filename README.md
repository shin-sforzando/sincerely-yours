# sincerely-yours

<!-- Badges -->
[![Deploy](https://github.com/shin-sforzando/sincerely-yours/workflows/Deploy/badge.svg)](https://github.com/shin-sforzando/sincerely-yours/actions/workflows/deploy.yml)
[![Bump Version](https://github.com/shin-sforzando/broad-boilerplate/workflows/Bump%20Version/badge.svg)](https://github.com/shin-sforzando/sincerely-yours/actions/workflows/deploy.yml)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

<!-- Screenshots -->
|![Screenshot 1](https://placehold.jp/32/3d4070/ffffff/720x480.png?text=Screenshot%201)|![Screenshot 2](https://placehold.jp/32/703d40/ffffff/720x480.png?text=Screenshot%202)|
|:---:|:---:|
|Screenshot 1|Screenshot 2|

<!-- Synopsis -->
A list to manage weddings and funerals.

<!-- TOC -->
- [Prerequisites](#prerequisites)
- [How to](#how-to)
  - [Setup](#setup)
  - [Develop](#develop)
    - [Visual Studio Code Remote - Containers](#visual-studio-code-remote---containers)
  - [Run](#run)
  - [Lint](#lint)
  - [Test](#test)
  - [Deploy](#deploy)
    - [Deploy to Heroku](#deploy-to-heroku)
    - [Check Heroku](#check-heroku)
  - [Document](#document)
- [Notes](#notes)
  - [LICENSE](#license)
  - [Contributors](#contributors)

## Prerequisites

- A (Version x.y.z or higher)
  - B
  - C
- D
  - E

## How to

```shell
$ make help
ps                   監視
up                   起動
setup                初回
renew                更新
open                 閲覧
bash                 接続
shell                接続
logs                 記録
follow               追跡
hide                 秘匿
reveal               暴露
build                構築
start                開始
migrate              移行
admin_generator      管理
reset                原点
erd                  描画
lint                 監査
test                 試験
down                 停止
clean                掃除
prune                破滅
help                 助言
```

### Setup

```shell
(T. B. D.)
```

### Develop

#### [Visual Studio Code Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

The configuration files are located in `.devcontainer` .

```shell
(T. B. D.)
```

### Run

```shell
(T. B. D.)
```

### Lint

```shell
(T. B. D.)
```

### Test

```shell
(T. B. D.)
```

### Deploy

#### Deploy to Heroku

GitHub Actions deploys automatically.

```sh
heroku run rails assets:precompile RAILS_ENV=production --app sincerely-yours
heroku run rails db:migrate --app sincerely-yours
```

#### Check Heroku

```sh
heroku logs --tail --app sincerely-yours
```

```sh
heroku run rails console --app sincerely-yours
```

### Document

```shell
(T. B. D.)
```

## Notes

This repository is [Commitizen](https://commitizen.github.io/cz-cli/) friendly.

### LICENSE

See [LICENSE](LICENSE).

### Contributors

- [Shin'ichiro Suzuki](https://github.com/shin-sforzando)
