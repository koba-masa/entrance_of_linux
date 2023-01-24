# 基本的なLinuxコマンドに触れる
## ログイン
### ssh
- リモートマシンにログインする
   ```sh
   ssh testuser@192.168.56.2
   ```

#### オプション
- ポートを指定する
   - `-p`
      ```sh
      ssh -p 22 testuser@192.168.56.2
      ```
- 認証用の鍵ファイルを指定する
   - `-i`
      ```sh
      ssh -i ~/.ssh/testuser.pub testuser@192.168.56.2
      ```

## マニュアル
### man
- マニュアルを表示する
   ```sh
   man ssh
   ```

## サーバ・ユーザ確認
### whoami
- ログインしているユーザを確認する
   ```sh
   whoami
   ```

### uname
- システム情報を表示する
   ```sh
   uname
   ```
- システム情報を全て表示する
   ```sh
   uname -a
   ```

   `Linux localhost.localdomain 3.10.0-1160.el7.x86_64 #1 SMP Mon Oct 19 16:18:59 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux`
   |値|概要|オプション|
   |:--|:--|:--|
   |Linux|カーネル名|`-s`|
   |localhost.localdomain|ホスト名|`-n`|
   |3.10.0-1160.el7.x86_64|カーネルリリース番号|`-r`|
   |#1 SMP Mon Oct 19 16:18:59 UTC 2020|カーネルバージョン|`-v`|
   |x86_64|マシンのハードウェア名|`-m`|
   |x86_64|プロセッサの種類|`-p`|
   |x86_64|ハードウェアプラットフォーム|`-i`|
   |GNU/Linux|OS名|`-o`|


### hostname
- ホスト名を表示する
   ```sh
   hostname
   ```

## 変数表示
### echo
- 変数の内容を表示する
   ```sh
   echo $PATH
   ```

### printenv
- 環境変数を表示する
  ```sh
  printenv
  ```

## 移動
### cd
- ディレクトリを移動する
   ```sh
   cd /var/log
   ```
- ホームディレクトリに移動する
   ```sh
   cd ~
   ```
- 一階層上に移動する
   ```sh
   cd ..
   ```

### pwd
- 現在のディレクトリパスを表示する
   ```sh
   pwd
   ```

## ファイル操作
### ls
- ファイルの一覧を表示する
   ```sh
   ls
   ```
- 1ファイル1行で一覧を表示する
   ```sh
   ls -1
   ```
- ファイルの詳細な一覧を表示する
   ```sh
   ls -l
   ```
- 隠しファイルを含めてファイル一覧を表示する
   ```sh
   ls -a
   ```

### vi
- ファイルを編集する
   ```sh
   vi test.txt
   ```

#### モード
- インサートモード
- コマンドモード
- exモード

#### コマンド
|コマンド|概要|
|:--|:--|
|i|インサートモードに変更する。カーソルの前から開始|
|a|インサートモードに変更する。カーソルの後から開始|
|o|インサートモードに変更する。カーソルの下の行から開始|
|O|インサートモードに変更する。カーソルの上の行から開始|
|ESC|コマンドモードに変更する|
|:w|上書き保存|
|:q|閉じる|
|:q!|保存せずに閉じる|
|:wq|保存して閉じる|

#### 参考
- [viを使い倒そう](http://archive.linux.or.jp/JF/JFdocs/vi-user-usage.html)

### view
- viの書き込み権限がないモード

### cat
- ファイルの内容を表示する
   ```sh
   cat test.txt
   ```

### less
### more
### head
### tail
- ファイルの末を表示する
   ```sh
   tail test.txt
   ```
- ファイルに追加されたファイルを表示し続ける
   ```sh
   tail -f test.txt
   ```

### mkdir
- ディレクトリを作成する
   ```sh
   mkdir sample
   ```

### cp
- ファイルをコピーする
   ```sh
   cp test.txt sample/text2.txt
   ```
- 再起的にファイルをコピーする
   ```sh
   cp -r sample sample2
   ```
- ファイルの権限を維持したままコピーする
   ```sh
   cp -p test.txt test3.txt
   ```

### mv
- ファイル・ディレクトリを移動する
   ```sh
   mv test.txt sample/.
   ```

   |第一引数|第二引数|結果|
   |:--|:--|:--|
   |ファイル|ファイル|リネーム|
   |ファイル|ディレクトリ|移動|
   |ディレクトリ|存在しないディレクトリ|リネーム|
   |ディレクトリ|存在するディレクトリ|移動|

### touch
- ファイルを作成する
   ```sh
   touch test4.txt
   ```

### ln
- ハードリンクを作成する
   ```sh
   ln test4.txt test5.txt
   ```
- シンボリックリンクを作成する
   ```sh
   ln -s test4.txt test5.txt
   ```

#### ハードリンクとシンボリックリンク
- [参考](https://linuc.org/study/samples/2424/)

### find
- ファイルを検索する
   ```sh
   find . -name "test4*"
   ```

### grep
- ファイル内の文字を検索する
   ```sh
   grep "te" test.txt
   ```

### rm
- ファイルを削除する
   ```sh
   rm test4.txt
   ```
- 再起的に削除する(ディレクトリを削除する)
   ```sh
   rm -r sample
   ```

## ファイルの書庫化・圧縮・展開
### tar
- ファイルの書庫化をする
   ```sh
   tar cvf sample2.tar sample2
   ```
- 書庫化したファイルを展開する
   ```sh
   tar xvf sample2.tar sample2
   ```

### gzip
- ファイルを圧縮する
   ```sh
   gzip test.txt
   ```

### gunzip
- ファイルを展開する
   ```sh
   gunzip test.txt.gz
   ```

### tar + gzip
- 書庫化と圧縮を同時に行う
   ```sh
   tar cvzf sample2.tar.gz sample2
   ```

## 特別なコマンドや処理
### リダイレクト
#### >
- 標準出力をファイルに書き込む
   ```sh
   echo "redirect" > redirect.txt
   ```

#### >>
- 標準出力をファイルに書き込む
   ```sh
   echo "redirect" >> redirect.txt
   ```

### |(パイプ)
- 左辺の標準出力を右辺のコマンドに引き継ぐ

#### grep
- 標準出力の内容に対して、検索する
   ```sh
   ls -la | grep ".bash"
   ```

### xargs
- 標準出力を読み込み、コマンドを生成し、実行する
   ```sh
   find . -name "redirect*" | xargs rm
   ```

## ファイル転送
### scp
- リモート環境にファイルをコピーする
   ```sh
   scp shell/kadai/permission_and_owner.sh testuser@192.168.56.2:~/.
   ```
