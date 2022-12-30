# VirtualBoxについて
## そもそもVirtualBoxとは？
- 仮想化ソフトウェアの一つ
- 類似のものに以下がある
   - [VMWare](https://www.vmware.com/jp.html)
   - [Parallels](https://www.parallels.com/jp/)
- 現在、米Oracleが開発を行っている

### そもそも仮想化ソフトウェアとは？
- 手元のOS(`ホストOS`)上に、アプリケーションとして仮想化ソフトウェアをインストールし、そのアプリケーション上にて、追加のOS(`ゲストOS`)を実行することができる

   ![仮想化ソフトウェア](/images/virtual_box/virtual_software.png)

### Dockerとの違い
- VirtualBoxやVMWare等は、アプリケーション上で仮想的なOSを作り出すのに対して、Docker等は、アプリケーション上でゲストOSなしで、アプリケーションを実行する

   ![コンテナ](/images/virtual_box/container.png)
