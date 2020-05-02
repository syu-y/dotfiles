# カスタムコマンド

## 追加手順

1. ホームディレクトリ配下に.localディレクトリ作成
2. .local配下にシェルスクリプト作成
3. シンボリックリンク作成

### 1. ホームディレクトリ配下に.localディレクトリ作成

コマンドの置き場所を作成
初回のみ実施、以降は手順2からで良い

```shell
cd ~
mkdir .local
```

### 2. .local配下にシェルスクリプト作成

```shell
cd ~/.local
vi sample.sh
```

### 3. シンボリックリンク作成

無闇にPATHを増やしたくないので**/usr/local/bin**配下にシンボリックリンクを配置

```shell
sudo ln -si ~/.local/samle.sh /usr/local/bin
```

## カスタムコマンド Help

### treecp,treecpdir

ディレクトリ構成をクリップボードにコピーするコマンド。

```shell
# ディレクトリのみ
treecpdir
# ファイルを含めてコピー
treecp
```

導入は以下でtreeコマンドをインストールし、それぞれの実行ファイルを作成し[追加手順](#追加手順)を実施。

```shell
brew install tree
```

### gitdiffget

gitの差分を取得するコマンド。（コミット間の差分）

```shell
# コミット間の差分を取得
gitdiffget [コミットID1] [コミットID2]
```

[参考ページ](https://tekuaru.jack-russell.jp/2019/07/22/2309/)

### cofiles

サブディレクトリは以下含めて総ファイル数を表示する。

```shell
#. カレントディレクトリは以下で実行
cofiles
```

