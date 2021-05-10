# ゲストOSのインストール
## VirtualBoxの設定
### ハードディスクの設定
#### ハードディスク
![ハードディスク](images/guest_os_install/hard_disk.png)

|項目|概要|備考|
|:--|:--|:--|
|仮想ハードディスクを追加しない|ローカル環境に仮想ハードディスクの領域を追加しない|別途設定を行う必要がある|
|仮想ハードディスクを作成する|ローカル環境に仮想ハードディスクの領域を新規追加||
|すでにある仮想ハードディスクファイルを使用する|既存の仮想ハードディスクの領域を使用||

#### ハードディスクのタイプ
![ハードディスクのタイプ](images/guest_os_install/hard_disk_type.png)
- 仮想ハードディスクの互換性の違い

|項目|概要|備考|
|:--|:--|:--|
|VDI(VirtualBox Disk Image)|VirtualBox専用||
|VHD(Virtual Hard Disk)|Virtual PCと互換性がある||
|VMDK(Virtual Machine Disk)|VMWareと互換性がある||

### OS用ディスクイメージの読み込み
#### ディスクイメージの選択
![ディスクイメージの読み込み](images/guest_os_install/set_disk_1.png)
![ディスクイメージの読み込み](images/guest_os_install/set_disk_2.png)
![ディスクイメージの読み込み](images/guest_os_install/set_disk_3.png)

## OSのインストール

