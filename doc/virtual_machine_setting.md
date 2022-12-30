# 仮想マシンの作成
1. `新規`を押下する
![仮想マシンの作成](/images/virtual_machine_setting/01.png)

1. `エキスパートモード`に変更する
![仮想マシンの作成](/images/virtual_machine_setting/02.png)

## `Name and Operating System`の設定
![仮想マシンの作成](/images/virtual_machine_setting/03.png)

|項目名|設定値|概要|備考|
|:--|:--|:--|:--|
|名前|`web_server`|仮想マシンの管理名を入力||
|Folder|適当|仮想マシンの格納するディレクトリを指定|仮想マシンのデータは`<マシンフォルダー>/web_server`となる|
|ISO Image|ダウンロードしたISOファイル|使用するOSのイメージファイルを選択||
|Edition||||
|タイプ|`Linux`|使用するゲストOSの種別を選択|Window、Linux、Mac OS、etc|
|バージョン|`Red Hat (64-bit)`|使用するゲストOSのバージョン等を選択||
|Skip Unattended Installation|`チェック`|||

## `Unattended Installation`の設定をする
   - 本資料では、スキップする

   ![仮想マシンの作成](/images/virtual_machine_setting/04.png)

## `Hardware`の設定をする
![仮想マシンの作成](/images/virtual_machine_setting/05.png)

|項目名|設定値|概要|備考|
|:--|:--|:--|:--|
|メインメモリー|`4096MB`|割り当てるメモリサイズを指定|ホストOSのメモリのうち、ゲストOSに割り当てるメモリサイズを指定|
|Processors|適当|割り当てるCPU数を指定|ホストOSのCPU数のうち、ゲストOSに割り当てるCPU数を指定|
|Enable EFI||||

## `Hard Disk`の設定
![仮想マシンの作成](/images/virtual_machine_setting/06.png)

|項目名|設定値|概要|備考|
|:--|:--|:--|:--|
|Hard Disk File Location|デフォルト|仮想ハードディスクファイルの格納先を指定||
|Hard Disk File Size|`20GB`|ホストOSのストレージサイズのうち、ゲストOSに割り当てるストレージサイズを指定||
|Hard Disk File Type|`VDI`||
|Hard Disk File Variant(Pre-allocate Full Size)|||
|Hard Disk File Variant(Split into 2GB parts)|||

### ハードディスクファイルの作成

|項目|概要|備考|
|:--|:--|:--|
|`Create a Virtual Hard Disk now`|ローカル環境に仮想ハードディスクの領域を新規追加する||
|`Use an Existing Virtual Hard Disk File`|既存の仮想ハードディスクの領域を使用する|既存の仮想ハードディスクファイルを選択する必要がある|
|`Do Not Add a Virtual Hard Disk`|ローカル環境に仮想ハードディスクの領域を追加しない|別途設定を行う必要がある|

### 仮想ハードディスクファイルタイプ
|項目|概要|備考|
|:--|:--|:--|
|VDI(VirtualBox Disk Image)|VirtualBox専用||
|VHD(Virtual Hard Disk)|Virtual PCと互換性がある||
|VMDK(Virtual Machine Disk)|VMWareと互換性がある||
|HDD(Parallels Hard Disk)|||
|QCOW(QEMU Copy-On-Write)|||
|QED(QEMU enhanced disk)|||

## 完了
1. `完了`を押下する

![仮想マシンの作成](/images/virtual_machine_setting/07.png)
