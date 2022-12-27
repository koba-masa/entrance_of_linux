# ネットワークの設定

1. `ツール` > `ネットワーク` > `Host-only Networks` > `作成`を押下する
![ネットワークの設定](/images/network_setting/01.png)
![ネットワークの設定](/images/network_setting/02.png)
![ネットワークの設定](/images/network_setting/03.png)

## アダプタの設定
![ネットワークの設定](/images/network_setting/04.png)

|項目|設定値|概要|備考|
|:--|:--|:--|:--|
|名前|`HostOnlyAdapter_eol`|||
|Mask|`255.255.255.0`|||
|Lower Bound|`192.168.56.1`|||
|Upper Bound|`192.168.56.199`|||

## 仮想マシンへの割り当て
1. `仮想マシン` > `設定`を押下する
![ネットワークの設定](/images/network_setting/05.png)
1. `ネットワーク` > `アダプター1`を押下する
![ネットワークの設定](/images/network_setting/06.png)

   |項目|設定値|概要|備考|
   |:--|:--|:--|:--|
   |ネットワークアダプターを有効化|`チェック`|||
   |割り当て|`ホストオンリーネットワーク`|||
   |名前|`HostOnlyAdapter_eol`|||

1. `OK`を押下する
